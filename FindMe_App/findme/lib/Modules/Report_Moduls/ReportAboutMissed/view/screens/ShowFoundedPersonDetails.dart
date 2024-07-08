import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/ShowMoreDetailsAboutPerson%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowFoundedPersonDetails extends StatefulWidget {
  const ShowFoundedPersonDetails({Key? key}) : super(key: key);

  @override
  State<ShowFoundedPersonDetails> createState() =>
      _ShowFoundedPersonDetailsState();
}

class _ShowFoundedPersonDetailsState extends State<ShowFoundedPersonDetails> {
  String? name = "test";

  String? phone ="test";

  String? address="test";

  String? date="test";

  String? notes="test";






  // getInfo() {
  //   name = context.read<MissedCubit>().nameController.text;
  //   phone = context.read<MissedCubit>().phoneController.text;
  //   address = context.read<MissedCubit>().addressController.text;
  //   date = context.read<MissedCubit>().dateOfMissController.text;
  //   notes = context.read<MissedCubit>().descriptionController.text;
  // }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('معثور عليهم'),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.arrow_forward_ios),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                            // backgroundImage: NetworkImage(
                            //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fphoto%2F9374697%2F&psig=AOvVaw34qC15X1iY6wX92q5296z9&ust=1680246070729000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCID6q5j69_oCFQAAAAAdAAAAABAD',
                            // ),
                            ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.read<MissedCubit>().nameController.text,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                context
                                    .read<MissedCubit>()
                                    .addressController
                                    .text,
                                style: const TextStyle(fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => MissedCubit(),
                                child: ShowMoreDetailsAboutPerson(
                                  name: name!,
                                  address: address!,
                                  date: date!,
                                  phone: phone!,
                                  description: notes!,
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'المزيد',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${context.read<MissedCubit>().dateOfMissController.text} تاريخ العثور',
                        style: const TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Container(),
            ),

            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.redAccent,
            //     padding: const EdgeInsets.symmetric(
            //       vertical: 16.0,
            //       horizontal: 32.0,
            //     ),
            //     textStyle: const TextStyle(fontSize: 16.0),
            //   ),
            //   child: const Text('لم تجد المفقود في المعثور عليهم !'),

            // ),
          ],
        ),
      ),
    );
  }
}
