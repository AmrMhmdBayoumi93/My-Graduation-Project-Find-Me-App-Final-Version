import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:findme/Modules/Report_Moduls/RebortAboutFounded/View/Screens/cubit/founded_cubit.dart';
import 'package:findme/Modules/Report_Moduls/RebortAboutFounded/View/Screens/cubit/founded_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';




class ReportFoundedPersonP2 extends StatefulWidget {
  const ReportFoundedPersonP2({Key? key}) : super(key: key);
 
  @override
  _ReportMissedPersonP2State createState() => _ReportMissedPersonP2State();
}

class _ReportMissedPersonP2State extends State<ReportFoundedPersonP2> {
  File? imageFile;
  void pickImage() async {
    ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    var image = File(pickedFile.path);
    setState(() {
      imageFile = image;
    });
  }







  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoundedCubit(),
      child: BlocConsumer<FoundedCubit, FoundedStates>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is FoundedSuccessState) {
            AwesomeDialog(
              context: context,
              autoHide: const Duration(seconds: 3),
              dialogType: DialogType.success,
              animType: AnimType.bottomSlide,
              desc: "تم ارسال البيانات بنجاح",
              title: "تم",
            ).show();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('إبلاغ عن معثور عليه'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    'شكراً لإيجابيتك ورغبتك في المساعدة',
                    style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  imageFile != null
                      ? CircleAvatar(
                          radius: 250,
                          backgroundImage: FileImage(
                            imageFile!,
                          ))
                      : GestureDetector(
                          onTap: () {
                            pickImage();
                          },
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.camera_alt,
                                      size: 50, color: Colors.blue),
                                  Text('قم برفع صور المعثور عليه'),
                                  Text(
                                    'يجب رفع صور تحتوي على المفقود فقط',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(height: 20),
                  //const SizedBox(height: 20),
                  // DropdownButtonFormField<String>(
                  //   decoration: const InputDecoration(
                  //     labelText: 'المحافظة',
                  //     border: OutlineInputBorder(),
                  //   ),
                  //   items: const <String>['محافظة 1', 'محافظة 2', 'محافظة 3']
                  //       .map((String value) {
                  //     return DropdownMenuItem<String>(
                  //       value: value,
                  //       child: Text(value),
                  //     );
                  //   }).toList(),
                  //   onChanged: (String? newValue) {},
                  // ),
                  // const SizedBox(height: 10),
                  // DropdownButtonFormField<String>(
                  //   decoration: const InputDecoration(
                  //     labelText: 'المنطقة',
                  //     border: OutlineInputBorder(),
                  //   ),
                  //   items: const <String>['منطقة 1', 'منطقة 2', 'منطقة 3']
                  //       .map((String value) {
                  //     return DropdownMenuItem<String>(
                  //       value: value,
                  //       child: Text(value),
                  //     );
                  //   }).toList(),
                  //   onChanged: (String? newValue) {},
                  // ),
                  // const SizedBox(height: 10),
                  // ElevatedButton.icon(
                  //   onPressed: () {},
                  //   icon: const Icon(Icons.map),
                  //   label: const Text('قم بتحديد الموقع على الخريطة'),
                  // ),
                  // const Spacer(),



                  state is FoundedLoadingState
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () async {
                            await context
                                .read<FoundedCubit>()
                                .uploadImageToFirestore(imageFile!, context);
                          },
                          child: const Text('التالي'),
                        ),  
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
