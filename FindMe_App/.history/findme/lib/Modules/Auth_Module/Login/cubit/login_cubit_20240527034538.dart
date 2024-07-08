import 'package:findme/Modules/Auth_Module/Login/cubit/login_states.dart';
import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../report/view/screens/report_screen.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  loginWithEmailAndPassword(var context) async {
    emit(LoginLoadingState());

    final auth = FirebaseAuth.instance;
    try {
      await auth
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) {
        emit(LoginSuccessState());
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ReportScreen(),
          ),
        );
      });
    } on FirebaseAuthException catch (e) {
      emit(LoginErrorState(error: e.code));
    }
  }
}
