import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/down_of_screen_widget.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/required_data_widget.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/top_of_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const TopOfRegScreenWidget(),
                RequiredDataWidgetOfReg(),
                const SizedBox(height: 20),
                const DownOfScreenWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
