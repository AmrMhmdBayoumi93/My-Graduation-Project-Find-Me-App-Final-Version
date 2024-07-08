import 'dart:ui';

import 'package:findme/Modules/Auth_Module/Register/view/components/top_of_screen_widget.dart';
import 'package:findme/core/util/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  // Constructor should only accept a named argument for key

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

              TopOfScreenWidget(),

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: TextEditingController(),
                  validator: MyValidation().nameValidate,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: '  اسم المستخدم',
                    hintStyle: TextStyle(fontSize: 25),
                    prefixIcon: Icon(Icons.abc_rounded, size: 35),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xff4D96B3)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xff4D96B3)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 198, 16, 6),
                      ),
                    ),
                  ),
                ),
              ),

              
              // Rest of the code...
              // (Similar adjustments may be needed for other TextFormField widgets)
            ],
          ),
        ),
      ),
    );
  }
}
