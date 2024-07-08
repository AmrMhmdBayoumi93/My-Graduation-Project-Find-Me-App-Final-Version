import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:findme/screens/splash_screen.dart';
import 'firebase_options.dart';
                      // core -- > has shared files
                      
void main() async {
  
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
runApp(  const RouteScreen()));
 


     
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
        
      
