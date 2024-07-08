import 'package:findme/core/util/validation.dart';
import 'package:flutter/material.dart';

class RequiredDataWidget extends StatelessWidget {
  const RequiredDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [ 

            // TextFormField
            TextFormField( 
              au

              controller:TextEditingController(),
              validator: MyValidation().nameValidate,


              keyboardType: TextInputType.name,
              decoration:InputDecoration(

                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Colors.grey, 
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),

                ),  

                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Colors.blue, 
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),

                ),  

                errorBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Colors.red, 
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),

                ),  






              )

            ),









      ],

         









    );
  }
}