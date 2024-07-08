

import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/PersonLostResultFound.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/PersonLostResultNotFound%20.dart';
import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';






class ReportFoundedPersonP2 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {


                      
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(
              child: Apptext(
            text: 'ابلاغ عن معثور عليه ',
           
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



