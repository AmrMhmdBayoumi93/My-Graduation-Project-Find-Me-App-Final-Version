import 'package:findme/Modules/Auth_Module/Login/view/screen/login_screen.dart';
import 'package:findme/screens/emergency_screen.dart';
import 'package:findme/screens/helping_screen.dart';
import 'package:findme/screens/my_accout_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "المزيد",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyAccountPage(),
                ),
              );
            },
            child: const Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 16),
                    Text(
                      "حسابي",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ],
                ),
              ),
            ),
          ),
         
         
         
                  // helping
         
         
          InkWell(
            onTap: () { 
                Navigator.push(context,MaterialPageRoute( 
                builder:(context)=> const HelpingScreen()));
              
              
              ;
            },
            child: const Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 16),
                    Text(
                      "مساعدة",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.info,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ],
                ),
              ),
            ),
          ),
          



          //EmergencyNumbers  

          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute( 
                builder:(context)=> const EmergencyNumbers()
              
              
              ));
                  

            },
            child: const Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 16),
                    Text(
                      "ارقام الطواري",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.add_call,
                      color: Colors.blue,
                      size: 32,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 64),
          InkWell(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
                (route) => false,
              );
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 16),
                Icon(
                  Icons.logout_outlined,
                  color: Colors.grey,
                  size: 32,
                ),
                SizedBox(width: 16),
                Text(
                  "تسجيل الخروج",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
