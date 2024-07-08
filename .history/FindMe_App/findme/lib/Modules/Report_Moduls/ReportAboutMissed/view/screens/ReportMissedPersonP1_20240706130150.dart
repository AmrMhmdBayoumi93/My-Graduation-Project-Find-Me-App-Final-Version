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
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: context.read<MissedCubit>().nameController,
                  decoration: const InputDecoration(
                    hintText: 'الأسم',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الأسم مطلوب';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: _selectedGender,
                        items: ['الذكر', 'الأنثى']
                            .map((gender) => DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(gender),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: 'الجنس',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: _selectedage,
                        items: List.generate(
                            50, (index) => (index + 1).toString())
                            .map((age) => DropdownMenuItem<String>(
                                  value: age,
                                  child: Text(age),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedage = value!;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: 'السن',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.2,
                ),
                TextFormField(
                  controller: context.read<MissedCubit>().dateOfMissController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'من فضلك ادخل تاريخ الاختفاء';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    hintText: 'تاريخ الاختفاء',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16.2,
                ),
                TextFormField(
                  controller: context.read<MissedCubit>().addressController,
                  keyboardType: TextInputType.streetAddress,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'من فضلك ادخل مكان الاختفاء'
                      : null,
                  decoration: const InputDecoration(
                    hintText: 'مكان الاختفاء',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'رقم للتواصل',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: context.read<MissedCubit>().phoneController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'من فضلك ادخل رقم للتواصل';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      prefixText: '+20 ',
                      prefixStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'ادخل رقم للتواصل',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'من فضلك ادخل ملاحظاتك';
                    }
                    return null;
                  },
                  controller: context.read<MissedCubit>().descriptionController,
                  decoration: const InputDecoration(
                    hintText: 'ملاحظات إضافية',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 12.0),
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
                          await context.read<MissedCubit>().uploadImage(imageFile);
                        

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
