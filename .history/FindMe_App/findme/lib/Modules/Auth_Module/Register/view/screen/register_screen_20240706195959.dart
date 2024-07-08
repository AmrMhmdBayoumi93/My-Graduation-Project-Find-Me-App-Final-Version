import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/down_of_screen_widget.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/required_data_widget.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/top_of_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


      // phone num for parent who register
      




class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  // Constructor should only accept a named argument for key
  // الحمد لله   Register Screen Done
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const TopOfRegScreenWidget(),
                Form(
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
              
        onSaved: (newValue) {   
                
                phone = newValue;
                
              },



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
                const SizedBox(height: 20),
                 DownOfScreenWidget(name: name,phone: phone),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
