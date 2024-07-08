import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:flutter/material.dart';

class PersonResultNotFound extends StatelessWidget {
  const PersonResultNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no_result.jpeg',
            ),
            SizedBox(height: 20),  // Add some spacing between the image and the text
           Text(
            'نأسف لإبلاغكم لم نتمكن من الوصول لأي نتائج حتى الآن ...',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),

            Text(
             '        لا تقلق لعل وعسي احد يعثر علي مفقودك في القريب العاجل  ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
        


              const SizedBox(height: 20),
              // Publish Missing Person Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  ReportScreen(name:" for test name",phone:'for test ph')));
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'ارجع الي صفحة الابلاغ ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
