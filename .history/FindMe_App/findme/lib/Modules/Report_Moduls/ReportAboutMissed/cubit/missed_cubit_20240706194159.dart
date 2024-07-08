import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_states.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/PersonLostResultFound.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MissedCubit extends Cubit<MissedStates> {
  MissedCubit() : super(MissedInitialState());
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateOfMissController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final Dio _dio = Dio();

  Future<void> uploadImage(File imageFile, var context, String name ,String phone) async {
    emit(MissedLoadingState());
    const String uploadUrl = 'http://localhost:5000/upload';

    try {
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(imageFile.path,
            filename: 'upload.jpg'),
      });

      Response response = await _dio.post(uploadUrl, data: formData);

      if (response.statusCode == 200) {
        //emit(MissedSuccessState());
        if (response.data['match_found'] == true) {
          emit(MissedSuccessState());
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => RegisterCubit(),
              child: PersonLostResultFound(
                
                imageData:base64Decode( response.data['best_match']['image']), name: name, phone: phone, ),
            ),
          ));
        }
      } else {
        emit(MissedErrorState(
          response.data.toString(),
        ));
        print('Failed to upload image. Status code: ${response.statusCode}');
      }
    } catch (e) {
      emit(MissedErrorState(
        e.toString(),
      ));
      print('Exception caught: $e');
    }
  }
}
