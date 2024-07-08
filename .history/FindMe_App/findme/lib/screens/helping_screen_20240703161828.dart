import 'package:flutter/material.dart';

class HelpingScreen extends StatelessWidget {
  const HelpingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مساعدة'),
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
            leading: const Icon(Icons.help_outline, color: Colors.blue),
            title: const Text('الأسئلة الشائعة'),
            onTap: () {
              // Navigate to FAQ screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.book, color: Colors.blue),
            title: const Text('دليل المستخدم'),
            onTap: () {
              // Navigate to User Guide screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support, color: Colors.blue),
            title: const Text('اتصل بالدعم'),
            onTap: () {
              // Navigate to Contact Support screen or open email client
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blue),
            title: const Text('نظرة عامة على ميزات التطبيق'),
            onTap: () {
              // Navigate to App Features Overview screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.description, color: Colors.blue),
            title: const Text('الشروط والأحكام'),
            onTap: () {
              // Navigate to Terms and Conditions screen
            },
          ),
        ],
      ),
    );
  }
}
