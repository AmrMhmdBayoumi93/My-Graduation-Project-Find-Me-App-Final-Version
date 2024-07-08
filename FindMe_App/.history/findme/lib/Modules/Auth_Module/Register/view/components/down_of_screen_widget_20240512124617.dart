import 'package:findme/screens/login_screen.dart';
import 'package:flutter/material.dart';

class DownOfScreenWidget extends StatelessWidget {
   DownOfScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return
        Column(
          children: 
            ElevatedButton(
             style: ElevatedButton.styleFrom(
              
              backgroundColor: const Color(0xff056C95), // backgroundColor in newer versions
              minimumSize: const Size(240, 55),
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute (
                  builder: (context) {
                return   LoginScreen();
            }),
              );
            },
            
            child: const Text(
              ' تسجيل',
              style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
              ),
            ),
      ),
      
 SizedBox(
              height: 12,
            ),  
            
            
       // تمتلك حساب بالفعل ؟
            
              Row( 
                    textDirection:TextDirection.rtl,
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 


                          Text('تمتلك حساب بالفعل ؟  ',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 30,
                           color:Color(0xff056C95), 

                          ),

                          ),

            SizedBox(
              width: 8,
            ),




      InkWell(
             onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return LoginScreen();
                                    }));
                                  },
            child: Container(
              child: Text('سجل الدخول ',
                 textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color:Color(0xff056C95), 
                              ),
            
                              ),
            ),
      ),
    









                      ],


                  ),
        
     ],   );

   
   
   
   
   
   
   
    
  }
}