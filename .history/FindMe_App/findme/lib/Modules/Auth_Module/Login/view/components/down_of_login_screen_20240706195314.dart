import 'package:findme/Modules/Auth_Module/Login/cubit/login_cubit.dart';
import 'package:findme/Modules/Auth_Module/Register/view/screen/register_screen.dart';
import 'package:findme/Modules/Auth_Module/forget/view/forget_screen.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownOfLoginScreen extends StatelessWidget {
  String name;
  String phone;

   DownOfLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ForgetPasswordScreen();
            }));
          },
          child: const Center(
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
        const SizedBox(height: 25),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color(0xff056C95), // backgroundColor in newer versions
            minimumSize: const Size(240, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () {
            if (context.read<LoginCubit>().formKey.currentState!.validate()) {
              context.read<LoginCubit>().loginWithEmailAndPassword(context,name,phone);
            }
          },
          child: const Text(
            'التالي',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'لا تمتلك حساب ؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff056C95),
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const RegisterScreen();
                }));
              },
              child: const Text(
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
