

import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/PersonLostResultFound.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/PersonLostResultNotFound%20.dart';
import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class ReportFoundedPersonP2 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {


                      
  

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(
            
           
          
          ) , 

          actions: [
            CircleAvatar(
                backgroundColor: Colors.blue.withOpacity(0.5),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward)))
          ],
        ),



        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child:  Column(  

              children: [ 
                  Text('شكرا لأيجابيتك وربغتك في مساعدتنا ف الابلاغ عن معثور عليه ',
                  style: TextStyle( 
                    fontSize:28,

                  ),
                  ),


              ],
            ),
        ),
      ),
    );
  }
}



