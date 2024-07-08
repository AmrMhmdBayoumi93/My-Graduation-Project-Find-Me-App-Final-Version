
import 'package:findme/Modules/Auth_Module/Login/view/components/Top_of_loginscreen_widget.dart';
import 'package:findme/Modules/Auth_Module/Login/view/components/requried_data_widget.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/down_of_screen_widget.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/required_data_widget.dart';
import 'package:findme/Modules/Auth_Module/Register/view/components/top_of_screen_widget.dart';
import 'package:findme/core/util/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  // Constructor should only accept a named argument for key
                                        // الحمد لله   LoginScreen  Done
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
              TopOfLoginScreenWidget();

          RequiredDataWidgetOfLogin(),

              SizedBox(height: 20),


              DownOfScreenWidget(),





            ],
          ),
        ),
      ),
    );
  }
}
