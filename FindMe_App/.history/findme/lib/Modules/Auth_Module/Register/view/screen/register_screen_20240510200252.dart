import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:findme/screens/home_screen.dart';
import 'package:findme/screens/login_screen.dart';
    
    // be stl
   

class RegisterScreen extends  StatefulWidget {
  const RegisterScreen({super.key});
 
  @override
  State<RegisterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterScreen> {
   bool _obscureText = true;
   
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
            child: Center(child: 
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
        
        
        
                       Text('سجل حساب جديد',
                        style: TextStyle(
                          color:Color(0xff056C95), 
                          fontSize:40,
                          fontWeight: FontWeight.bold,
                          
                          ),
                      ),
        
                                // TextField
        
        





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
                              hintText: '  اسم المستخدم' ,
                                hintStyle: TextStyle(
                                  fontSize: 25
                                ),
          
                        prefixIcon: Icon(CupertinoIcons.number_square),
          
          
          
          
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
                              obscureText: _obscureText,
                            obscuringCharacter: '*',
                           
                           
                            decoration: InputDecoration(
                              hintText: '  كلمه المرور' ,
                                hintStyle: TextStyle(
                                  fontSize: 25
                                ),
          
                        prefixIcon: IconButton(
                icon: Icon(
                  // Use the appropriate icon based on the visibility state
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  // Toggle the obscure text state
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
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


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
                ],)
        
        
            ),
          ),
        ),




    );


  }
}