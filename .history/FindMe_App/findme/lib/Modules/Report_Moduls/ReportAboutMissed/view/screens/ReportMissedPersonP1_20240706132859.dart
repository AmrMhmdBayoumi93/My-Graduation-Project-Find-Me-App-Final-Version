import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/screens/home_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ReportMissedPersonP1 extends StatefulWidget {
  const ReportMissedPersonP1({super.key});

  @override
  _ReportMissedPersonP1State createState() => _ReportMissedPersonP1State();
}

class _ReportMissedPersonP1State extends State<ReportMissedPersonP1> {
  File? imageFile;
  TextEditingController numIdController = TextEditingController();
  String imageUrl = '';
  String _selectedGender = 'الذكر';
  final String _selectedRelation = 'الأب';
  String _selectedage = '18';

  Future<void> pickImage() async {
    ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    var image = File(pickedFile.path);
    setState(() {
      imageFile = image;
    });
  }



  Future<void> addDataToFireBase() async {
    try {
      await FirebaseFirestore.instance.collection('data').add({
        "name": context.read<MissedCubit>().nameController.text,
        "imageUrl": imageUrl,
        "age": _selectedage,
        "gender": _selectedGender,
        "dataMissed": context.read<MissedCubit>().dateOfMissController.text,
        "address": context.read<MissedCubit>().addressController.text,
        "phone": context.read<MissedCubit>().phoneController.text,
        "number": numIdController.text,
        "notes": context.read<MissedCubit>().descriptionController.text,
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

  Future<void> uploadImage() async {
    if (imageFile == null) return;

    try {
      final storageRef = FirebaseStorage.instance.ref();
      final imagesRef = storageRef.child("images/${DateTime.now()}.jpg");
      final uploadTask = imagesRef.putFile(imageFile!);
      await uploadTask.whenComplete(() => null);
      imageUrl = await imagesRef.getDownloadURL();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MissedCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إبلاغ عن شخص مفقود'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: context.read<MissedCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'عن الشخص المفقود',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                imageFile != null
                    ? Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
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
                                Text('قم برفع صور المفقود'),
                                Text(
                                  'يجب رفع صور تحتوي على المفقود فقط',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              
               
               

                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () async {
                    if (context
                        .read<MissedCubit>()
                        .formKey
                        .currentState!
                        .validate()) {
                          await context.read<MissedCubit>().uploadImage(imageFile!,context);

                        

                      await uploadImage();
                      // await addDataToFireBase();
                    }
                  },
                  child: const Text(
                    'بلاغ عن الشخص المفقود',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
