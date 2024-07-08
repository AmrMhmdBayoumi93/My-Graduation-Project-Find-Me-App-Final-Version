import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyNumbers extends StatelessWidget {
  const EmergencyNumbers({Key? key}) : super(key: key);

  void _callNumber(String number) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: number);
    if (await canLaunch(phoneUri.toString())) {
      await launch(phoneUri.toString());
    } else {
      // Handle error when the call cannot be made
      throw 'Could not launch $number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أرقام الطوارئ'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.local_police, color: Colors.blue),
            title: const Text('الشرطة'),
            subtitle: const Text('122'),
            onTap: () => _callNumber('122'),
          ),
          ListTile(
            leading: const Icon(Icons.local_hospital, color: Colors.blue),
            title: const Text('الإسعاف'),
            subtitle: const Text('123'),
            onTap: () => _callNumber('123'),
          ),
          ListTile(
            leading: const Icon(Icons.local_fire_department, color: Colors.blue),
            title: const Text('المطافئ'),
            subtitle: const Text('180'),
            onTap: () => _callNumber('180'),
          ),
          ListTile(
            leading: const Icon(Icons.phone, color: Colors.blue),
            title: const Text('الدفاع المدني'),
            subtitle: const Text('199'),
            onTap: () => _callNumber('199'),
          ),
          ListTile(
            leading: const Icon(Icons.phone, color: Colors.blue),
            title: const Text('حوادث الطرق'),
            subtitle: const Text('01221110000'),
            onTap: () => _callNumber('01221110000'),
          ),
        ],
      ),
    );
  }
}
