import 'package:flutter/material.dart';

class TopOfLoginScreenWidget extends StatelessWidget {
   TopOfLoginScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
                Column(
                   mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [ 
                SizedBox(height: 40,),
        
        
                          Text('Find Me!',
                        style: TextStyle(
                          color:Color(0xff056C95), 
                          fontSize:80,
                          fontWeight: FontWeight.bold,
                          
                          ),
                      ),
        
        
        
                       Text('سجل الدخول الأن',
                        style: TextStyle(
                          color:Color(0xff056C95), 
                          fontSize:40,
                          fontWeight: FontWeight.bold,
                          
                          ),
                      )]));
        



  }
}