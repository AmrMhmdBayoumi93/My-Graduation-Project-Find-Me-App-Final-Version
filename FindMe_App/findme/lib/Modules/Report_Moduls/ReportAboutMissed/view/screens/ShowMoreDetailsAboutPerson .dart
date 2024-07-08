import 'package:flutter/material.dart';

class ShowMoreDetailsAboutPerson extends StatelessWidget {
  String name;
  String address;
  String phone;

  String description;
  String date;
  ShowMoreDetailsAboutPerson(
      {super.key,
      required this.name,
      required this.address,
      required this.phone,
      required this.description,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بيانات المعثور عليه'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            // CircleAvatar(
            //   radius: 50,
            //   backgroundImage: AssetImage('assets/images/person.jpg'), // Replace with the actual image path
            // ),
            const SizedBox(height: 16.0),
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24.0),
            const Row(
              children: [
                // CircleAvatar(
                //   radius: 25,
                //   backgroundImage: AssetImage('assets/images/person.jpg'), // Replace with the actual image path
                // ),
                SizedBox(width: 16.0),
                CircleAvatar(
                  radius: 25,
                  // backgroundImage: AssetImage('assets/images/person.jpg'), // Replace with the actual image path
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'تاريخ العثور',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(date),
                  const SizedBox(height: 16.0),
                  const Text(
                    'السن',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  const Text("18"),
                  const SizedBox(height: 16.0),
                  const Text(
                    'عنوان المكان الذي تم العثور عليه فيه',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(address),
                ],
              ),
            ),

            const SizedBox(height: 32.0),

            ElevatedButton(
              onPressed: () {
                // Launch a phone  call
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                textStyle: const TextStyle(fontSize: 16.0),
              ),
              child: const Text(
                '  تواصل',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
