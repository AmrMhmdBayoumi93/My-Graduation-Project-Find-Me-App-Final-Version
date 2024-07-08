
import 'package:findme/Modules/Auth_Module/Register/view/screen/register_screen.dart';
import 'package:findme/screens/forget_password.dart';
import 'package:findme/screens/home_screen.dart';
import 'package:flutter/material.dart';

class DownOfLoginScreen extends StatelessWidget {
  const DownOfLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ForgetPassword();
            }));
          },
          child: Center(
            child: Text(
              'نسيت كلمة المرور ؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff056C95),
                fontSize: 30,
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
         ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff056C95), // backgroundColor in newer versions
                minimumSize: const Size(240, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
             onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }),
            );
          },
              child: Text(
                'التالي',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
        SizedBox(height: 12),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'لا تمتلك حساب ؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 30  ,
                color: Color(0xff056C95),
              ),
            ),
            SizedBox(width: 8),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterScreen();
                }));
              },
              child: Text(
                'سجل الان',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff056C95),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

