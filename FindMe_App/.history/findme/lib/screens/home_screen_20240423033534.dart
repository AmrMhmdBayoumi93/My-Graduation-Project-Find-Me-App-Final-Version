import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold( 
            body:  SafeArea(
              child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start  , 
                          crossAxisAlignment: CrossAxisAlignment.center,
                  children:[ Text('الصفحة الرئيسية',
                  textAlign: TextAlign.right,
                              style: TextStyle(
                                color:Color(0xff056C95), 
                                fontSize:40,
                                fontWeight: FontWeight.bold,
                                
                                ),
                            ),


















                            
                           ], ),
              ),
              
            ),
            
   );
  }
}