import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findme/Modules/Report_Moduls/RebortAboutFounded/View/Screens/cubit/founded_cubit.dart';
import 'package:findme/Modules/Report_Moduls/RebortAboutFounded/View/Screens/cubit/founded_states.dart';
import 'package:findme/screens/home_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

// phone num  

class ReportFoundedPersonP2 extends StatefulWidget {
  const ReportFoundedPersonP2({super.key});

  @override
  State<ReportFoundedPersonP2> createState() => _ReportMissedPersonP2State();
}

class _ReportMissedPersonP2State extends State<ReportFoundedPersonP2> {
  File? imageFile;
  String imageUrl = '';
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final dateController = TextEditingController();

  Future<void> pickImage() async {
    ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    var image = File(pickedFile.path);
    setState(() {
      imageFile = image;
    });
  }

  Future<void> uploadImage() async {
    if (imageFile == null) return;

    try {
      // Create a reference to the location you want to upload to in Firebase Storage
      final storageRef = FirebaseStorage.instance.ref();
      final imagesRef = storageRef.child("images/${DateTime.now()}.jpg");

      // Upload the file to Firebase Storage
      final uploadTask = imagesRef.putFile(imageFile!);

      // Wait for the upload to complete
      await uploadTask.whenComplete(() => null);

      // Get the download URL
      imageUrl = await imagesRef.getDownloadURL();
    } catch (e) {
      print(e);
    }
  }

  Future<void> addDataToFireBase() async {
    try {
      await FirebaseFirestore.instance.collection('data').add({
        "imageUrl": imageUrl,
        "address": addressController.text,
        "phone": phoneController.text,
        "name": nameController.text,
        "date": dateController.text,
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );

      AwesomeDialog(
        context: context,
        autoHide: const Duration(seconds: 3),
        dialogType: DialogType.success,
        animType: AnimType.bottomSlide,
        desc: "تم ارسال البيانات بنجاح",
        title: "تم",
      ).show();
    } on FirebaseException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return (BlocProvider(
      create: (context) => FoundedCubit(),
      child: BlocConsumer<FoundedCubit, FoundedStates>(
        listener: (context, state) {
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
          return Form(
            key: formKey,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('إبلاغ عن معثور عليه'),
                ),
                body: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    const Text(
                      'شكراً لإيجابيتك ورغبتك في المساعدة',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    imageFile != null
                        ? Container(
                            height: 192, // Twice the radius of the original CircleAvatar
                            width: 192, // Twice the radius of the original CircleAvatar
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: FileImage(imageFile!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () async {
                              await pickImage();
                              await uploadImage();
                            },
                            child: Container(
                              height: 120,
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
                    // const Text(
                    //   'اسم المعثور عليه',
                    //   textDirection: TextDirection.rtl,
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //   ),
                    // ),
                    // const SizedBox(height: 10),
                    // SizedBox(
                    //   width: double.infinity, // Ensure it takes up available width
                    //   child: TextFormField(
                    //     controller: nameController,
                    //     textDirection: TextDirection.rtl,
                    //     keyboardType: TextInputType.text,
                    //     validator: (value) {
                    //       if (value == null || value.isEmpty) {
                    //         return 'من فضلك ادخل اسم المعثور عليه';
                    //       }
                    //       return null;
                    //     },
                    //     decoration: InputDecoration(
                    //       filled: true,
                    //       fillColor: Colors.grey[300],
                    //       prefixStyle: const TextStyle(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //       hintText: 'ادخل اسم المعثور عليه',
                    //       hintTextDirection: TextDirection.rtl,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(30),
                    //         borderSide: BorderSide.none,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(height: 8),
                    // const Text(
                    //   'تاريخ العثور',
                    //   textDirection: TextDirection.rtl,
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //   ),
                    // ),
                    // const SizedBox(height: 10),
                    // SizedBox(
                    //   width: double.infinity, // Ensure it takes up available width
                    //   child: TextFormField(
                    //     controller: dateController,
                    //     textDirection: TextDirection.rtl,
                    //     keyboardType: TextInputType.phone,
                    //     validator: (value) {
                    //       if (value == null || value.isEmpty) {
                    //         return 'من فضلك ادخل تاريخ العثور عليه';
                    //       }
                    //       return null;
                    //     },
                    //     decoration: InputDecoration(
                    //       filled: true,
                    //       fillColor: Colors.grey[300],
                    //       prefixStyle: const TextStyle(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //       hintText: 'ادخل تاريخ العثور عليه',
                    //       hintTextDirection: TextDirection.rtl,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(30),
                    //         borderSide: BorderSide.none,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(height: 8),
                    // const Text(
                    //   'عنوان المعثور عليه',
                    //   textDirection: TextDirection.rtl,
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    // const SizedBox(height: 10),
                    // SizedBox(
                    //   width: double.infinity, // Ensure it takes up available width
                    //   child: TextFormField(
                    //     controller: addressController,
                    //     keyboardType: TextInputType.text,
                    //     textDirection: TextDirection.rtl,
                    //     validator: (value) {
                    //       if (value == null || value.isEmpty) {
                    //         return 'من فضلك ادخل عنوان المعثور عليه';
                    //       }
                    //       return null;
                    //     },
                    //     decoration: InputDecoration(
                    //       filled: true,
                    //       fillColor: Colors.grey[300],
                    //       prefixStyle: const TextStyle(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //       hintText: 'ادخل عنوان المعثور عليه',
                    //       hintTextDirection: TextDirection.rtl,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(30),
                    //         borderSide: BorderSide.none,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(height: 8),
                    // const Text(
                    //   'رقم للتواصل',
                    //   textDirection: TextDirection.rtl,
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    // const SizedBox(height: 10),
                    // SizedBox(
                    //   width: double.infinity, // Ensure it takes up available width
                    //   child: TextFormField(
                    //     controller: phoneController,
                    //     keyboardType: TextInputType.phone,
                    //     textDirection: TextDirection.rtl,
                    //     validator: (value) {
                    //       if (value == null || value.isEmpty) {
                    //         return 'من فضلك ادخل رقم للتواصل';
                    //       }
                    //       return null;
                    //     },
                    //     decoration: InputDecoration(
                    //       filled: true,
                    //       fillColor: Colors.grey[300],
                    //       prefixStyle: const TextStyle(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //       hintText: '  ادخل رقمك للتواصل',
                    //       hintTextDirection: TextDirection.rtl,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(30),
                    //         borderSide: BorderSide.none,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    
                    const SizedBox(height: 24),
                    state is FoundedLoadingState
                        ? const CircularProgressIndicator()
                        : Column(
                            children: [
                              MaterialButton(
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                color: Colors.blue,
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    if (imageUrl.isNotEmpty) {
                                      await addDataToFireBase();
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content:
                                              Text("من فضلك يجب اضافة صورة"),
                                        ),
                                      );
                                    }
                                  }
                                },
                                child: const Text('ابلاغ'),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
