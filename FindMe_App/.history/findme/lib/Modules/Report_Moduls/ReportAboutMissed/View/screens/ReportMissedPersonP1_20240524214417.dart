
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/AppText.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/App_Static_Data.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/Colores.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/CustomTextField.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/Custom_DropDown_Button.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/responsive_utton%20copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportMissedPersonP1 extends StatelessWidget {
  const ReportMissedPersonP1({super.key});

  @override
  Widget build(BuildContext context) {
    String dropedValue2 = 'رجل';
    String? droppedValue = 'القاهرة';
    String? droppedValue2 = ' حلوان';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(
              child: Apptext(
            text: 'إبلاغ عن معثور عليه',
            color: Colores().blackColorTheme,
            size: 22,
          )),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.blue.withOpacity(0.5),
              child: IconButton(
                onPressed: () {
                  //Set the action of the icon
                },
                icon: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Container(
              height: 800,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colores().mainColor,
                      child: Icon(Icons.accessibility),
                    ),
                    Apptext(
                      text: 'من فضلك قم بملئ أكبر عدد ممكن من  ',
                      size: 17,
                      color: Colores().mainColor,
                    ),
                    Apptext(
                      text: ' بيانات الاستمارة لتساعدنا في سرعة  ',
                      size: 17,
                      color: Colores().mainColor,
                    ),
                    Apptext(
                      text: ' الوصول إلى أهل المعثور عليه ',
                      size: 17,
                      color: Colores().mainColor,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Apptext(
                        text: 'اسم المعثور عليه',
                        size: 17,
                        color: Colores().blackColorTheme.withOpacity(0.7),
                      ),
                    ),
                    CustomText_Field(
                      width: double.maxFinite,
                      maxAndMinLines: 1,
                      height: 50,
                      hintText: 'مثل أسامة ياسر',
                      onIconPressed: () {},
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Apptext(
                        text: 'تحديد الجنس والسن',
                        size: 17,
                        color: Colores().blackColorTheme.withOpacity(0.7),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     CustomText_Field(
                    //       width: 150,
                    //       maxAndMinLines: 1,
                    //       height: 50,
                    //       hintText: '13',
                    //       onIconPressed: () {},
                    //     ),
                    //     Spacer(
                    //       flex: 1,
                    //     ),
                    //     Cusrom_Drop_Down_Button(
                    //       values: ['رجل', 'انثى'],
                    //       droppedValue: dropedValue2,
                    //       width: 150,
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Apptext(
                    //     text: 'تاريخ العثور عليه',
                    //     size: 17,
                    //     color: Colores().blackColorTheme.withOpacity(0.7),
                    //   ),
                    // ),
                    // CustomText_Field(
                    //   width:double.maxFinite,
                    //   maxAndMinLines: 1,
                    //   height: 50,
                    //   hintText: '',
                    //   icon: Icons.date_range,
                    //   onIconPressed: () {
                    //     // DatePickerDialog(
                    //     //   firstDate: DateTime(2000),
                    //     //   lastDate: DateTime(2030),
                    //     // );
                    //   },
                    // ),
                    // SizedBox(height: 10),
                    // Apptext(
                    //   text: 'أقرب وقت لحدوث الواقعة',
                    //   size: 13,
                    //   color: Colores().blackColorTheme.withOpacity(0.4),
                    // ),
                    // SizedBox(height: 15),
                
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Apptext(
                    //     text: 'موصفات المفقود',
                    //     size: 17,
                    //     color: Colores().blackColorTheme.withOpacity(0.7),
                    //   ),
                    // ),
                    // CustomText_Field(maxAndMinLines: 5, hintText: '', width: double.maxFinite, height: 170, onIconPressed: (){},),
                    // Apptext(
                    //   text: 'وصفا الملابس والعلامات الجسدية بالتفصيل',
                    //   size: 12,
                    //   color: Colores().blackColorTheme.withOpacity(0.4),
                    // ),
                    // SizedBox(height: 15,),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Apptext(
                    //     text: 'عنوان المكان الذي فقد فيه',
                    //     size: 17,
                    //     color: Colores().blackColorTheme.withOpacity(0.7),
                    //   ),
                    // ),
                    // Row(
                    //   children: [
                    //     Align(
                    //         alignment: Alignment.centerRight,
                    //         child: Cusrom_Drop_Down_Button(droppedValue: droppedValue2, values: Static_Data().cairoNeighborhoods,width: 150,)),

                    //     Spacer(flex: 1,),
                    //     Align(
                    //         alignment: Alignment.centerRight,
                    //         child: Cusrom_Drop_Down_Button(droppedValue: droppedValue, values: Static_Data().provinces,width: 150,)),


                    //   ],
                    // ),
                    // SizedBox(height: 25,),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Apptext(
                    //     text: 'و قم بتحديد الموقع على الخريطة',
                    //     size: 17,
                    //     color: Colores().blackColorTheme.withOpacity(0.7),
                    //   ),
                    // ),
                    // GestureDetector(
                    //   child: ResponsiveButton(
                    //     width: double.infinity,
                    //     color: Color(0xff1a2249),
                    //   ),
                    //   onTap: () {
                    //     //Handle Button Action................
                    //   },
                    // ),
                    // SizedBox(height: 25,),

                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Apptext(
                    //     text: 'رقم للتواصل',
                    //     size: 17,
                    //     color: Colores().blackColorTheme.withOpacity(0.7),
                    //   ),
                    // ),
                    // CustomText_Field(
                    //   width:double.maxFinite,
                    //   maxAndMinLines: 1,
                    //   height: 50,
                    //   hintText: '+20',
                    //   onIconPressed: () {
                    //     // DatePickerDialog(
                    //     //   firstDate: DateTime(2000),
                    //     //   lastDate: DateTime(2030),
                    //     // );
                    //   },
                    // ),
                    SizedBox(height: 25,),
                    ResponsiveButton(
                        on
                      text: 'بحث عن المفقود',
                      width: double.infinity,
                      color: Color(0xff1275f7),
                    ),                  ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
