import 'dart:typed_data';

import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:findme/Modules/Auth_Module/Register/cubit/register_states.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/ShowFoundedPersonDetails.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonLostResultFound extends StatefulWidget {
   PersonLostResultFound({super.key ,required this.imageData , required this.name , required this.phone});
   
    String name;
    String phone;
      Uint8List imageData;

    Future<void> _launchCaller({required String phoneNumber}) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



  @override
  State<PersonLostResultFound> createState() => _PersonLostResultFoundState();
}

class _PersonLostResultFoundState extends State<PersonLostResultFound> {
  TextEditingController numIdController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {



    return BlocBuilder<RegisterCubit, RegisterStates>(
      builder: (context, state) {
        return Scaffold(  
          appBar: AppBar(),
        
          backgroundColor: Colors.white,
    
          body: Form(
            key: _formKey,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
    
    
                       const Text(
                        'تمكنا من الوصول لبعض المعثور عليهم المشابهين للمفقود',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
    
    
                      Container(
                        width: 200,
                        height: 250,
                        child: Image.memory(widget.imageData, 
                        
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,
                        ),
                      ),
                      const SizedBox(height: 20),
                     
                                Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${FirebaseAuth.instance.currentUser?.displayName}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                ' اسم المبلغ عن مفقودكم  ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${FirebaseAuth.instance.currentUser?.email}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                '   البريد الالكتروني',
               
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
  
          const SizedBox(height: 32),
  



   Row(
     children: [
       const Text(
                    ' : رقم هاتف المبلغ عن مفقودكم',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                   Text(
                "01023383045",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
     ],
   ),
   
             










              
              
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
