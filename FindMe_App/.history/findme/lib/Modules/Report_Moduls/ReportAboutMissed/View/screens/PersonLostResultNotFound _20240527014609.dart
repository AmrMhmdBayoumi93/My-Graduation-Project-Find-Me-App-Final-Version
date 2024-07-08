import 'package:flutter/material.dart';

class PersonResultNotFound extends StatelessWidget {
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
                  icon: Icon(Icons.close),
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
              SizedBox(height: 20),
              // Title Text
              Text(
                'نأسف لإبلاغكم أننا لم نتمكن من الوصول لأي نتائج',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // Subtitle Text
              Text(
                'ولكن يمكنك نشر بيانات المفقود في نطاق أوسع لزيادة احتمالية العثور عليه',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // Publish Missing Person Button
              ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: ReportScreen()))
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
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

