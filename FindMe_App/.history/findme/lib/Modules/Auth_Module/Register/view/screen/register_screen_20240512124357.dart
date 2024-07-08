import 'package:findme/Modules/Auth_Module/Register/view/components/top_of_screen_widget.dart';
import 'package:findme/core/util/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:findme/screens/home_screen.dart';
import 'package:findme/screens/login_screen.dart';
    
    // be stl
   

class RegisterScreen extends  StatelessWidget {
   RegisterScreen({super.key});
 
  
   
     @override
     Widget build(BuildContext context) {
   
    return Scaffold(
      
          //backgroundColor: Colors.white12,
          
appBar: AppBar(

backgroundColor: Colors.blueGrey,

        //title: Text('Login Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Arrow icon for the back button
          onPressed: () {
            // Navigate back to the previous screen
            Navigator.pop(context);
          },
        ),
      ),







        body:  SingleChildScrollView(
          child: SafeArea( 
            child:TopOfScreenWidget(),







                                // TextFormField
        
        
                      Padding(
                        padding:  EdgeInsets.only(left:15.0,right: 15),
                        child: TextFormField(

                         keyboardType:TextInputType.name, 

                          controller: TextEditingController(),
                        validator:MyValidation().nameValidate,
                        



                             // Set the text input style with desired text size
              style: TextStyle(
                fontSize: 30, // Specify the desired font size
              ),
                             textAlign: TextAlign.right,


                        //  4 design      
                            decoration: InputDecoration(    
                              hintText: '  اسم المستخدم' ,
                                hintStyle: TextStyle(
                                  fontSize: 25
                                ),
          
                        prefixIcon: Icon(Icons.abc_rounded,
                            size: 35,
                        ),
          
          
          
          
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                              
          
          
          
                                border: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xff4D96B3)),),
                      
                               enabledBorder: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xff4D96B3)),),
          
          
                            //  focusedBorder: OutlineInputBorder( 
                            //       borderRadius: BorderRadius.circular(12),
                            //       borderSide: BorderSide(color: Color(0xff4D96B3)),),
          
                             errorBorder: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color.fromARGB(255, 198, 16, 6)),)
                                
                      
                            ),
                      
                          
                        ),
                      ),
          
        

  
              SizedBox(height:20 ,),
          




                      Padding(
                        padding:  EdgeInsets.only(left:15.0,right: 15),
                        child: TextFormField(
                             // Set the text input style with desired text size
              style: TextStyle(
                fontSize: 30, // Specify the desired font size
              ),
                             textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
          
                            decoration: InputDecoration(
                              hintText: '  رقم الهاتف ' ,
                                hintStyle: TextStyle(
                                  fontSize: 25
                                ),
          
                        prefixIcon: Icon(Icons.phone),
          
          
          
          
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                              
          
          
          
                                border: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xff4D96B3)),),
                      
                               enabledBorder: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xff4D96B3)),),
          
          
                            //  focusedBorder: OutlineInputBorder( 
                            //       borderRadius: BorderRadius.circular(12),
                            //       borderSide: BorderSide(color: Color(0xff4D96B3)),),
          
                             errorBorder: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color.fromARGB(255, 198, 16, 6)),)
                                
                      
                            ),
                      
                          
                        ),
                      ),
          
        
        
        
        
        
             
              SizedBox(height:20 ,),
          
          
        
              
                      Padding(
                        padding: const EdgeInsets.only(left:15.0,right: 15),
                        child: TextFormField(
                             // Set the text input style with desired text size
                     style: TextStyle(
                       fontSize: 30, // Specify the desired font size
                           ),
                             textAlign: TextAlign.right,
                              keyboardType: TextInputType.text,
                             // obscureText: _obscureText,
                            obscuringCharacter: '*',
                           
                           
                            decoration: InputDecoration(
                              hintText: '  كلمه المرور' ,
                                hintStyle: TextStyle(
                                  fontSize: 25
                                ),
                                  prefixIcon: Icon(Icons.lock_clock_rounded,
                            size: 35,
                        ),
          
              //           prefixIcon: IconButton(
             
              // ),
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                              
          
          
                                border: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xff4D96B3)),),
                      
                               enabledBorder: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xff4D96B3)),),
          
          
                            //  focusedBorder: OutlineInputBorder( 
                            //       borderRadius: BorderRadius.circular(12),
                            //       borderSide: BorderSide(color: Color(0xff4D96B3)),),
          
                             errorBorder: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color.fromARGB(255, 198, 16, 6)),)
                                
                      
                            ),
                      
                          
                        ),
                      ),
          
              

















              
              SizedBox(height:20 ,),
          
          



        
        Container(
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
          ],
        ),


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
              ),
        
        
            ),
         
        );




  


  }
}