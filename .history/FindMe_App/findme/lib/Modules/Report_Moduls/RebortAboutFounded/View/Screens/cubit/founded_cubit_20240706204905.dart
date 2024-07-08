import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findme/Modules/Report_Moduls/RebortAboutFounded/View/Screens/cubit/founded_states.dart';
import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';

class FoundedCubit extends Cubit<FoundedStates> {
  FoundedCubit() : super(FoundedInitialState());

  Future<String> uploadImageToStorage(File imageFile) async {
    Reference imgRef = FirebaseStorage.instance.ref(basename(imageFile.path));
    await imgRef.putFile(imageFile);
    return await imgRef.getDownloadURL();
  }

  Future<void> uploadImageToFirestore(File imgurl, var context) async {
    emit(FoundedLoadingState());
    final downloadUrl = await uploadImageToStorage(imgurl);
    try {
      await FirebaseFirestore.instance.collection('missed').add({
        'image': downloadUrl,
      }).then(
        (value) {
          emit(FoundedSuccessState());
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return  ReportScreen(name:'test for name',phone:'t');
          }));
        },
      );

      //  emit(MissedInitialState());
    } catch (e) {
      emit(FoundedErrorState(
        e.toString(),
      ));
      log("Errrrrrrrrrrror");
    }
  }
}
