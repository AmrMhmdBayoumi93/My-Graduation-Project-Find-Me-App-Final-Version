import 'package:findme/core/util/validation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RequiredDataWidget extends StatelessWidget {
   RequiredDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(


                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,

                  controller: TextEditingController(),
                  validator: MyValidation().nameValidate,
         
         keyboardType: TextInputType.name,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  
                    textAlign: TextAlign.right,
                  
                  
                  decoration:
               
               
               

                ),
              
              );






  
  }
        










}