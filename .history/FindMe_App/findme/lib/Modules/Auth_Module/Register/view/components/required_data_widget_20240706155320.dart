import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:findme/core/util/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// الحمد لله
class RequiredDataWidgetOfReg extends StatelessWidget {
  RequiredDataWidgetOfReg({super.key});
    
    String ?name;
    String ? phone;
  
  final InputDecoration decoration = const InputDecoration(
    hintText: 'الاسم',
    hintStyle: TextStyle(
      fontSize: 30,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: TextFormField(
              onSaved: (newValue) {
                
                name = newValue;
                
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: context.read<RegisterCubit>().nameController,
              validator: MyValidation().nameValidate,
              keyboardType: TextInputType.name,
              style: const TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.right,
              decoration: decoration,
            ),
          ),

          // ph
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: context.read<RegisterCubit>().phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'من فضلك ادخل رقم هاتفك';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.right,
              decoration: decoration.copyWith(
                hintText: 'رقم الهاتف',
                prefixIcon: const Icon(Icons.phone),
              ),
            ),
          ),

          //mail

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: context.read<RegisterCubit>().emailController,
              validator: MyValidation().emailRegexValidate,
              keyboardType: TextInputType.name,
              style: const TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.right,
              decoration: decoration.copyWith(
                hintText: 'الايميل',
                prefixIcon: const Icon(Icons.email_rounded),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: context.read<RegisterCubit>().passwordController,
              validator: MyValidation().passwordValidate,
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
    hintText: '  اسم المستخدم',
    hintStyle: const TextStyle(fontSize: 25),
    prefixIcon: const Icon(Icons.abc_rounded, size: 35),
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
