import 'package:bloc/bloc.dart';
import 'package:findme/Modules/Auth_Module/Register/cubit/register_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
TextEditingController state = TextEditingController();
TextEditingController cirty = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> signUpWithEmailAndPassword() async {
    emit(RegisterLoadingState());
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) {
        value.user?.updateDisplayName(nameController.text);
        emit(RegisterSuccessState());
      }).catchError((e) {
        emit(RegisterErrorState(e.toString()));
      });
    } on FirebaseAuthException catch (e) {
      emit(RegisterErrorState(e.code));
    }
  }
}
