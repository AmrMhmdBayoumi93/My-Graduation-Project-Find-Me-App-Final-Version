import 'package:findme/core/models/found_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FoundedDataPage extends StatelessWidget {
  const FoundedDataPage({super.key, required this.founded});
  final FoundModel founded;
  Future<void> _launchCaller({required String phoneNumber}) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بيانات المعثور عليه'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 16.0),
        child: MaterialButton(
          onPressed: () async {
            await _launchCaller(phoneNumber: founded.phone);
          },
          color: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Text(
            'تواصل معنا',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(founded.imageUrl),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            founded.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                founded.date,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "تاريخ العثور",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                founded.address,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "عنوان المكان الذي\n تم العثور عليه",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
