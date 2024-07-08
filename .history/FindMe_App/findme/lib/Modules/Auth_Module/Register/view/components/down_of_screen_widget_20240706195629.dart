import 'package:findme/Modules/Auth_Module/Login/view/screen/login_screen.dart';
import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownOfScreenWidget extends StatelessWidget {

    String name;
    String phone;
  const DownOfScreenWidget({super.key,required this.name,required this.phone});


  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff056C95),
            minimumSize: const Size(240, 55),
          ),
          onPressed: () {

            if (context
                .read<RegisterCubit>()
                .formKey
                .currentState!
                .validate()) {
              context.read<RegisterCubit>().signUpWithEmailAndPassword();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  LoginScreen(name:name,phone: phone);
              }));
            }
          },
          child: const Text(
            ' تسجيل',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'تمتلك حساب بالفعل ؟  ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff056C95),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  LoginScreen();
                }));
              },
              child: Container(
                child: const Text(
                  'سجل الدخول ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff056C95),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
