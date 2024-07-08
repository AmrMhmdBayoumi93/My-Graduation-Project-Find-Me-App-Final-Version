import 'dart:typed_data';

import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/ShowFoundedPersonDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonLostResultFound extends StatefulWidget {
   PersonLostResultFound({super.key ,required this.imageData});
   
   
      Uint8List imageData;

    



  @override
  State<PersonLostResultFound> createState() => _PersonLostResultFoundState();
}

class _PersonLostResultFoundState extends State<PersonLostResultFound> {
  TextEditingController numIdController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Close Button
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      // Close action
                    },
                  ),
                ),
                // Image
                Container(
                  width: 100,
                  height: 100,
                  child: Image.memory(Widget), // replace with your asset image path
                ),
                const SizedBox(height: 20),
                // Title Text
                const Text(
                  'تمكنا من الوصول لبعض المعثور عليهم المشابهين للمفقود',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                // Subtitle Text
                const Text(
                  'نرجوا منك إدخال رقمك القومي لكي نتمكن من رؤية النتائج',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                // National ID TextField
               
               
               
                // TextFormField(
                //   controller: numIdController,
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'الرقم القومي مطلوب';
                //     } else if (value.length != 14) {
                //       return "الرقم القومي غير صحيح";
                //     }
                //     return null;
                //   },
                //   keyboardType: TextInputType.number,
                //   decoration: InputDecoration(
                //     hintText: 'الرقم القومي',
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(8.0),
                //     ),
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                const SizedBox(height: 20),
                // Continue Button
              
              
              
              
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                    create: (context) => MissedCubit(),
                                    child: const ShowFoundedPersonDetails(),
                                  )));
                      // Continue action
                    }

                    // Continue action ShowFoundedPersonDetails
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'متابعة',
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

// void main() {
//   runApp(MaterialApp(
//     home: PersonLostResultFound(),
//   ));
// }
