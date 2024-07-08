import 'package:findme/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), 
    () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.asset(
                    "assets/images/SPQ1.PNG",
                    width: 150,
                    height: 120,
                  ),
                ),
              ),
       
          
               const Text(
                'Find Me!',
                style: TextStyle(
                  fontSize: 65,
                  fontWeight: FontWeight.bold,
                ),
              ),
          
          ],
        ),
      ),
    );
  }
}
