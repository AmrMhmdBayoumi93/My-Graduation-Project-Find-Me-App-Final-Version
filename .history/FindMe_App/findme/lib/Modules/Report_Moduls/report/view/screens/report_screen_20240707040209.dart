import 'package:findme/Modules/Report_Moduls/RebortAboutFounded/View/Screens/ReportFoundedPersonP2.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/ReportMissedPersonP1.dart';
import 'package:findme/screens/edit_account.dart';
import 'package:findme/screens/my_accout_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:findme/Modules/ReportAboutMissed/view/screens/Report_Missed_person.dart';
class ReportScreen extends StatelessWidget {
  
  
    String name;
    String phone;
   ReportScreen({super.key , required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ابلاغ",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(



            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              const Text(
                ' "مفقود" هو تطبيق يساعد في العثور على المفقودين عن\n طريق استخدام الذكاء الصناعي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 48),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                
                  // backgroundColor: const Color(0xFF007BFF),
                   backgroundColor:  Colors.red,
                
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => MissedCubit(),
                          child:  ReportMissedPersonP1(name: name, phone: phone,),
                        ),
                      ));
                },
                child: const Text(
                  'إبلاغ عن مفقود',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(

                   backgroundColor:  Colors.green,
                  // backgroundColor: const Color(0xFF1A1A1A),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReportFoundedPersonP2(),
                      ));
                },
                child: const Text(
                  'إبلاغ عن معثور عليه',
                  style: TextStyle(
                   
                    fontSize: 18,
                  
                   
                    color: Colors.white,
                  ),
                ),
              ),


              const Spacer(),

  //               TextButton(onPressed: (){


  // //                   print(name);
                    
                  
  // //               },
                
  // //                child:Text('test')
  // //               ),

        
  // // Text(
  // //               "${FirebaseAuth.instance.currentUser?.displayName}",
  // //               style:
  // //                   const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  // //             ),
  // //             const Text(
  // //               "الاسم الكامل",
  // //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  // //             ),
           







             ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundBuilder: Colors.white, // Background color
    foregroundBuilder: Colors.black, // Text color
    textStyle: const TextStyle(
      fontSize: 30,
    ),
  ),
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyAccountPage()));
  },
  child: const Text('حسابي'),
)
            
               SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
