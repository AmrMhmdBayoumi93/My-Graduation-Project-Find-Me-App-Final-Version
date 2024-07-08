

import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/PersonLostResultFound.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/PersonLostResultNotFound%20.dart';
import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';






class ReportFoundedPersonP2 extends StatefulWidget {
 

class _ReportMissedPersonState extends State<ReportFoundedPersonP2> {
  @override
  Widget build(BuildContext context) {

    String? droppedValue = 'القاهرة';
    String? droppedValue2 = ' حلوان';

                      
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(
              child: Apptext(
            text: 'ابلاغ عن معثور عليه ',
            color: colores.blackColorTheme,
            size: 22,
          )),
          actions: [
            CircleAvatar(
                backgroundColor: Colors.blue.withOpacity(0.5),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward)))
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: colores.mainColor,
                  child: Icon(Icons.accessibility),
                ),
                Spacer(
                  flex: 1,
                ),



                ),
                // Apptext(
                //   text: ' جهدنا للعثور علي المفقود',
                //   size: 17,
                //   color: colores.mainColor,
                // ),
                // Spacer(
                //   flex: 1,
                // ),
                // GestureDetector(
                //   child: Container(
                //     height: 100,
                //     width: double.maxFinite,
                //     decoration: BoxDecoration(
                //         color: colores.mainColor.withOpacity(0.1),
                //         borderRadius: BorderRadius.circular(15)),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: [
                //         Spacer(
                //           flex: 4,
                //         ),
                //         Icon(
                //           Icons.camera_alt,
                //           size: 30,
                //           color: colores.mainColor,
                //         ),
                //         Apptext(
                //           text: 'قم برفع صورة المعقور عليه',
                //           size: 15,
                //           color: colores.mainColor,
                //         ),
                //         Spacer(
                //           flex: 1,
                //         ),
                //       ],
                //     ),
                //   ),
                //   onTap: () {
                //     showDialog();
                //     //the action to access mobile files and pick the image of the missed person
                //   },
                // ),
                // Spacer(
                //   flex: 1,
                // ),
                // Row(
                //   children: [
                //     Apptext(
                //       text: 'يجب رفع صورتين علي الأقل ',
                //       size: 9.5,
                //       color: colores.blackColorTheme.withOpacity(0.5),
                //     ),
                //     const CircleAvatar(
                //       radius: 5,
                //       backgroundColor: Colors.red,
                //     ),
                //     Apptext(
                //       text: '  يجب رفع صورة تحتوي علي المفقود فقط ',
                //       size: 9.5,
                //       color: colores.blackColorTheme.withOpacity(0.5),
                //     ),
                //     const CircleAvatar(
                //       radius: 5,
                //       backgroundColor: Colors.red,
                //     ),
                //   ],
                // ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colores.mainColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colores.mainColor,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: 4,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              
              
              
              
              
              








                Spacer(
                  flex: 3,
                ),




              )),









 TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReportScreen(), // Change this if needed
                      ),
                    );
                  },
                  child: Text(
                    'التالي ',
                    style: TextStyle(
                      color: Color(0xff1275f7),
                      fontSize: 32,
                    ),
                  ),
                ),






                Spacer(
                  flex: 2,



                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



