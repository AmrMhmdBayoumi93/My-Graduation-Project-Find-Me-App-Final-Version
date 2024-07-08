import 'dart:typed_data';

import 'package:findme/Modules/Auth_Module/Register/cubit/register_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/ShowFoundedPersonDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonLostResultFound extends StatefulWidget {
   PersonLostResultFound({super.key ,required this.imageData});
   
   
      Uint8List imageData;

    



  @override
  State<PersonLostResultFound> createState() => _PersonLostResultFoundState();
}

class _PersonLostResultFoundState extends State<PersonLostResultFound> {
  TextEditingController numIdController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {



    return BlocBuilder<RegisterCubit, Reg>(
      builder: (context, state) {
        return Scaffold(
        
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
                        
                        fit: BoxFit.cover,),
                      ),
                      const SizedBox(height: 20),
                      // Title Text
                     
                     
              
              
              
              
              
              
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
