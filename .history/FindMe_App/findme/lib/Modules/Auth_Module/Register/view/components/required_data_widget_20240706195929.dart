import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:findme/core/util/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// الحمد لله
class RequiredDataWidgetOfReg extends StatelessWidget {
  RequiredDataWidgetOfReg({super.key});
    
    String ?name;
    String ? phone;
  
  @override
  Widget build(BuildContext context) {
    return 

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
