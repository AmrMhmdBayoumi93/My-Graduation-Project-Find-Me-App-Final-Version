import 'package:findme/Modules/Auth_Module/Login/cubit/login_cubit.dart';
import 'package:findme/core/util/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// الحمد لله
class RequiredDataWidgetOfLogin extends StatelessWidget {
  RequiredDataWidgetOfLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: context.read<LoginCubit>().emailController,
              validator: MyValidation().emailRegexValidate,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.right,
              decoration: decoration,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: context.read<LoginCubit>().passwordController,
              validator: (vlaue) {
                if (vlaue == null || vlaue.isEmpty) {
                  return 'من فضلك ادخل كلمة المرور';
                }
                return null;
              },
              style: const TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.right,
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.name,
              decoration: decoration.copyWith(
                hintText: 'كلمة المرور ',
                prefixIcon: const Icon(Icons.lock_clock_rounded),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
      
  InputDecoration decoration = InputDecoration(
    //   labelText: 'اسم المستخدم',
    //   floatingLabelAlignment: FloatingLabelAlignment.center,
    hintText: '  البريد الالكتروني',
    hintStyle: const TextStyle(fontSize: 25),
    prefixIcon: const Icon(Icons.email_rounded),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color.fromARGB(255, 88, 208, 255)),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 198, 16, 6),
      ),
    ),
  );
}
