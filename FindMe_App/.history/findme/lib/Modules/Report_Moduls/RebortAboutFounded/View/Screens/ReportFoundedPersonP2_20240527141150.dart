

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
              
            
              


               
              ],
            ),
          ),
        ),
      ),
    );
  }
}



