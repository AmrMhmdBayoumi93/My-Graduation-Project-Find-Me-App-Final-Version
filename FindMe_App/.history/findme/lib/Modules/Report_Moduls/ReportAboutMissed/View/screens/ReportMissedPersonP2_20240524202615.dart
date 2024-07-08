
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/AppText.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/Colores.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/CustomTextField.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/Custom_DropDown_Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportMissedPersonP2 extends StatelessWidget {
  const ReportMissedPersonP2({super.key});
 
  @override
  Widget build(BuildContext context) {
    String dropedValue1 = 'انثى';
    String dropedValue2 = 'رجل';
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
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colores().mainColor,
                  child: Icon(Icons.accessibility),
                ),
                SizedBox(
                  height: 15,
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
                Spacer(
                  flex: 1,
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
                  maxAndMinLines: 1,
                  hintText: 'مثل أسامة ياسر',
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Apptext(
                    text: 'حديد الجنس والسن',
                    size: 17,
                    color: Colores().blackColorTheme.withOpacity(0.7),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Cusrom_Drop_Down_Button(
                      values: ['انثى', 'رجل'],
                      droppedValue: dropedValue2,
                      width: 110,
                    ),
                    CustomText_Field(
                      maxAndMinLines: 1,
                      hintText: 'السن',
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
