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
              controller:TextEditingController(),
              validator: MyValidation().nameValidate,

              

            )






      ],

         









    );
  }
}