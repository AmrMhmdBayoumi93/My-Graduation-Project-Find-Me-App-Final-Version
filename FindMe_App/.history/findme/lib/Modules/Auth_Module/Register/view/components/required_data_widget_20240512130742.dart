import 'package:findme/core/util/validation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RequiredDataWidget extends StatelessWidget {
   RequiredDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Padding(


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
                      
                      
                      decoration:decoration,
                   
                   
                   

                    ),
                  
                  ),


 Padding(


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
                      
                      
                      decoration:decoration.copyWith(hintText: 'رقم الهاتف',
                        prefix
                      ),
                   
                   
                   

                    ),
                  
                  ),













      ],
    );






  
  }

          InputDecoration decoration = InputDecoration(
                    hintText: '  اسم المستخدم',
                    hintStyle: TextStyle(fontSize: 25),
                    prefixIcon: Icon(Icons.abc_rounded, size: 35),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xff4D96B3)),
                   
                    ),
                   
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xff4D96B3)),
                    ),


                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 198, 16, 6),
                      ),
                    ),

                    
                  );











}