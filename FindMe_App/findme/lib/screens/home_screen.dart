// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:findme/core/models/found_model.dart';
// import 'package:findme/core/models/missed_model.dart';
// import 'package:findme/core/widgets/custom_navigation_bar.dart';
// import 'package:findme/screens/found_data_screen.dart';
// import 'package:findme/screens/missed_data_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final searchController = TextEditingController();
//   bool isFound = false;
//   List<MissedModel> allMissed = [];
//   List<FoundModel> allFounded = [];

//   Future<void> getAllData() async {
//     var data = await FirebaseFirestore.instance.collection('data').get();
//     for (int i = 0; i < data.docs.length; i++) {
//       if (data.docs[i].data()['age'] != null) {
//         allMissed.add(
//           MissedModel.fromJson(
//             json: data.docs[i].data(),
//           ),
//         );
//       } else {
//         allFounded.add(
//           FoundModel.fromJson(
//             json: data.docs[i].data(),
//           ),
//         );
//       }
//     }
//     setState(() {});
//   }

//   @override
//   void initState() {
//     getAllData();
//     super.initState();
//   }

//   void search() {
//     int length = isFound ? allFounded.length : allMissed.length;
//     List<FoundModel> founddata = [];
//     List<MissedModel> misseddata = [];
//     for (int i = 0; i < length; i++) {
//       if (isFound && allFounded[i].name.contains(searchController.text)) {
//         founddata.add(allFounded[i]);
//       } else if (allMissed[i].name.contains(searchController.text)) {
//         misseddata.add(allMissed[i]);
//       }
//     }
//     isFound ? allFounded.clear() : allMissed.clear();
//     setState(() {
//       isFound ? allFounded = founddata : allMissed = misseddata;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           '${FirebaseAuth.instance.currentUser?.displayName}',
//           style: const TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search, color: Colors.black),
//             onPressed: () {
//               search();
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ChoiceChip(
//                   label: const Text('مفقود'),
//                   selected: !isFound,
//                   onSelected: (selected) {
//                     setState(() {
//                       isFound = false;
//                     });
//                   },
//                 ),
//                 ChoiceChip(
//                   label: const Text('معثور عليه'),
//                   selected: isFound,
//                   onSelected: (selected) {
//                     setState(() {
//                       isFound = true;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             TextField(
//               onChanged: (value) async {
//                 if (value.isEmpty) {
//                   isFound ? allFounded.clear() : allMissed.clear();
//                   await getAllData();
//                 } else {
//                   search();
//                 }
//               },
//               controller: searchController,
//               decoration: InputDecoration(
//                 hintText: 'ابحث بالاسم',
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: isFound ? allFounded.length : allMissed.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       contentPadding: EdgeInsets.zero,
//                       leading: CircleAvatar(
//                         backgroundImage: NetworkImage(isFound
//                             ? allFounded[index].imageUrl
//                             : allMissed[index].imageUrl),
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: Text(isFound
//                             ? allFounded[index].name
//                             : allMissed[index].name),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           isFound
//                               ? const SizedBox(width: 0)
//                               : Text('التفاصيل: ${allMissed[index].notes}'),
//                           isFound
//                               ? Text(
//                                   'مكان العثور: ${allFounded[index].address}')
//                               : Text(
//                                   'تاريخ التغيب: ${allMissed[index].dataMissed}'),
//                         ],
//                       ),
//                       trailing: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blueGrey,
//                         ),
//                         onPressed: () {
//                           isFound
//                               ? Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => FoundedDataPage(
//                                       founded: allFounded[index],
//                                     ),
//                                   ),
//                                 )
//                               : Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => MissedDataPage(
//                                       missed: allMissed[index],
//                                     ),
//                                   ),
//                                 );
//                         },
//                         child: const Text('المزيد',
//                             style: TextStyle(
//                               color: Colors.yellow,
//                               fontSize: 24,
//                             )),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const CustomNavigationBar(),
//     );
//   }
// }
