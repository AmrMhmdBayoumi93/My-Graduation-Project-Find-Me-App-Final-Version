import 'package:findme/core/util/validation.dart';
import 'package:flutter/material.dart';
                                      

          // الحمد لله 
class RequiredDataWidgetOfLogin extends StatelessWidget {
   RequiredDataWidgetOfLogin({super.key});
  
                       

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

  SizedBox(height: 20),

 Padding(


                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                       controller: TextEditingController(),
                        validator:MyValidation().phoneNumberValidate,
             
             keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      
                        textAlign: TextAlign.right,
                      
                      
                      decoration:decoration.copyWith(hintText: 'رقم الهاتف',
                        prefixIcon: Icon(Icons.phone_android),

                        
                        
                      


                      ),
                   
                   
                   

                    ),
                  
                  ),


  SizedBox(height: 20),

 Padding(


                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: TextFormField(
                       
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                    

                      controller: TextEditingController(),
                       validator:MyValidation().passwordValidate,
             
                   



                      style: TextStyle(
                        fontSize: 30,
                      ),
                      
                        textAlign: TextAlign.right,
                        




                      obscureText: true,
                      obscuringCharacter: '*',
                      



               keyboardType: TextInputType.name,

                 decoration:decoration.copyWith(hintText: 'كلمة المرور ',
                        prefixIcon: Icon(Icons.lock_clock_rounded),
                                    

                      ),
                   
                   
                   

                    ),
                  
                  ),


 SizedBox(height: 20),








      ],
    );






  
  }

          InputDecoration decoration = InputDecoration(
         //   labelText: 'اسم المستخدم',
         //   floatingLabelAlignment: FloatingLabelAlignment.center,
                    hintText: '  اسم المستخدم',
                    hintStyle: TextStyle(fontSize: 25),
                    prefixIcon: Icon(Icons.abc_rounded, size: 35),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey),
                   
                    ),
                   
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color.fromARGB(255, 88, 208, 255)),
                    ),


                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 198, 16, 6),
                      ),
                    ),

                    
                  );











}