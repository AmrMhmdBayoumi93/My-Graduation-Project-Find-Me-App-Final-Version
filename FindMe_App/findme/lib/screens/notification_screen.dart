import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

      // findme 4 version


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "الاشعارات",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('data').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          var docs = snapshot.data!.docs
              as List<QueryDocumentSnapshot<Map<String, dynamic>>>;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                textDirection: TextDirection.rtl,
                docs[index].data()['age'] != null
                    ? "${index + 1}- "
                        "تم نشر بيانات معثور عليه يسمي"
                        " ${docs[index].data()['name']}"
                    : "${index + 1}- "
                        "تم نشر بيانات مفقود يسمي"
                        " ${docs[index].data()['name']}",
                style: TextStyle(
                  fontSize: 16,
                  color: docs[index].data()['age'] != null
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
