import 'package:flutter/material.dart';
import 'package:findme/screens/splash_screen.dart';

                      // core -- > has shared files
                      
void main() {
  
   
runApp( const RouteScreen());
 


     
}

        class RouteScreen extends StatelessWidget {
                const RouteScreen({super.key});

         

          @override
          Widget build(BuildContext context) {
          return const MaterialApp( 
                debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ) ;
            
            











          }




        }
        
      
