import 'package:findme/Modules/Auth_Module/Login/cubit/login_cubit.dart';
import 'package:findme/Modules/Auth_Module/Login/view/components/Top_of_loginscreen_widget.dart';
import 'package:findme/Modules/Auth_Module/Login/view/components/down_of_login_screen.dart';
import 'package:findme/Modules/Auth_Module/Login/view/components/requried_data_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginScreen extends StatelessWidget {


   LoginScreen({super.key , required this.name ,  reqthis.phone});
  // الحمد لله   LoginScreen  Done
    String name;
    String phone ;
  
        // here    M
  
 
  
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                TopOfLoginScreenWidget(),
                RequiredDataWidgetOfLogin(),
                const SizedBox(height: 20),
                 DownOfLoginScreen(name: name,phone: phone),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
