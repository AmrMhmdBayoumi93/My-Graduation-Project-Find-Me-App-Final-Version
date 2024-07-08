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
              // Close Button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    // Close action
                  },
                ),
              ),
              // Image
              // Container(
              //   width: 100,
              //   height: 100,
              //   child: Image.asset('assets/images/robot_sad.png'), // replace with your asset image path
              // ),
              const SizedBox(height: 20),
              // Title Text
              const Text(
                'نأسف لإبلاغكم أننا لم نتمكن من الوصول لأي نتائج',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              // Subtitle Text
              // const Text(
              //   'ولكن يمكنك نشر بيانات المفقود في نطاق أوسع لزيادة احتمالية العثور عليه',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     fontSize: 16,
              //     color: Colors.black,
              //   ),
              // ),

            // inage

              Contai






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
