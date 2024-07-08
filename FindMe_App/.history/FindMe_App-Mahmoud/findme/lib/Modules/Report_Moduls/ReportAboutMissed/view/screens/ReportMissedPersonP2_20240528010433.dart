import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ReportMissedPersonP2 extends StatefulWidget {
  const ReportMissedPersonP2({Key? key}) : super(key: key);

  @override
  _ReportMissedPersonP2State createState() => _ReportMissedPersonP2State();
}

class _ReportMissedPersonP2State extends State<ReportMissedPersonP2> {
  File? imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    var img = File(pickedFile.path);
    setState(() {
      imageFile = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MissedCubit, MissedStates>(
      listener: (context, state) {
        // TODO: implement listener

        if (state is MissedSuccessState) {
          AwesomeDialog(
            context: context,
            autoHide: const Duration(seconds: 3),
            dialogType: DialogType.success,
            animType: AnimType.bottomSlide,
            desc: "تم العثور علي المفقود بنجاح",
            title: "تمت العملية بنجاح",
          ).show();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('إبلاغ عن مفقود '),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const Text(
                  'We Are Sorry , نعدكم ببذل قصاري جهدنا للعثور علي المفقود ',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 20),
                imageFile != null
                    ? CircleAvatar(
                        radius: 100,
                        backgroundImage: FileImage(imageFile!),
                      )
                    : GestureDetector(
                        onTap: _pickImage,
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
                                Text('قم برفع صورة المفقود  '),
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
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'المحافظة',
                    border: OutlineInputBorder(),
                  ),
                  items: const <String>['محافظة 1', 'محافظة 2', 'محافظة 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'المنطقة',
                    border: OutlineInputBorder(),
                  ),
                  items: const <String>['منطقة 1', 'منطقة 2', 'منطقة 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.map),
                  label: const Text('قم بتحديد الموقع على الخريطة'),
                ),
                const Spacer(),
                state is MissedLoadingState
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () async {
                          await context
                              .read<MissedCubit>()
                              .uploadImage(imageFile!, context);
                          //PersonLostResultNotFound
                        },
                        child: const Text('التالي'),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
