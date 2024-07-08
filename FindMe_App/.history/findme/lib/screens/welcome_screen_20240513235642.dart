
import 'package:flutter/material.dart';
import 'package:findme/screens/login_screen.dart';
import 'package:findme/Modules/Auth_Module/Register/view/screen/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Add your WelcomeScreen UI code here.
    return  Scaffold(

        //  backgroundColor: Colors.white12,
          // backgroundColor: Colors.white12,
      body:
          
       Center(
        child: SafeArea(
          child: Column(
            
          mainAxisAlignment: MainAxisAlignment.start, 
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
         
                const SizedBox(height: 25,
            ),
                   Container(
                    decoration: BoxDecoration(  
                      borderRadius: BorderRadius.circular(30),
                     
                    ),
                     child: Image.asset('findme\assets\images\Qmark2.PNG',
                          height: 140,
                          width: 120,          
                                     ),
                   ), 
              
               
                   const Text('اهلا بك في',
                      style: TextStyle(
                        color:Color(0xff89CFE4), 
                        // color:Color.fromARGB(255, 56, 15, 1), 
                        fontSize:50,
                         fontWeight: FontWeight.bold,
                        ),
                    ),
               
             
              
              
                  const Text('Find Me!',
                      style: TextStyle(
                        color:Color(0xff056C95), 
                        fontSize:80,
                        fontWeight: FontWeight.bold,
                        
                        ),
                    ),

                   const Padding(
                     padding: EdgeInsets.only(right:20.0),
                     child: Center(
                       child: Text('هو تطبيق يساعد فى العثور على المفقودين عن طريق استخدام الذكاء الأصطناعى',
                          textAlign: TextAlign.right,
                           maxLines:2,
                          style: TextStyle(
                            color:Color(0xff89CFE4), 
                            fontWeight: FontWeight.bold,
                         //  color:Color.fromARGB(255, 56, 15, 1), 
                            fontSize:25,
                            ),
                        ),
                     ),
                   ),
               
             
              
                const SizedBox(height: 80,
            ),




    ElevatedButton(
          style: ElevatedButton.styleFrom(
          
          backgroundColor: const Color(0xff056C95), // backgroundColor in newer versions
          minimumSize: const Size(290, 55),
        ),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute (
              builder: (context) {
            return   LoginScreen();
        }),
          );
        },
        
        child: const Text(
          'تسجيل الدخول',
          style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
          ),
        ),
      ),
      

      const SizedBox(height: 15,
            ),




ElevatedButton(
          style: ElevatedButton.styleFrom(
          
          backgroundColor: const Color(0xff056C95), // backgroundColor in newer versions
          minimumSize: const Size(290, 55),
        ),



        onPressed: () {
          Navigator.push(context,MaterialPageRoute (
              builder: (context) {
            return   RegisterScreen();
        }),
          );
        },
        
        child: const Text(
          'انشاء حساب جديد',
          style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
          ),
        ),
      ),
      













             
             ],
               ),
              
        
        
        
        
             
          ),
      ),
      );
 
 
 
 
 
 
    
  }
}

