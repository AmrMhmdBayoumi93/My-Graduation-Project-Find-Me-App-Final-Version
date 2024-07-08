
import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Handle back navigation
                  },
                ),
              ),
              SizedBox(height: 24),
              Image.asset(
                'assets/megaphone.png', // Add the path to your image asset
                height: 100,
              ),
              SizedBox(height: 24),
              Text(
                ' "مفقود" هو تطبيق يساعد في العثور على المفقودين عن\n طريق استخدام الذكاء الصناعي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 48),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF007BFF),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle button press for reporting a missing person
                },
                child: Text(
                  'إبلاغ عن مفقود',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1A1A1A),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle button press for reporting a found person
                },
                child: Text(
                  'إبلاغ عن مفقود عليه',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Handle navigation to the main application
                },
                child: Text(
                  'الدخول إلى التطبيق',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF007BFF),
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
