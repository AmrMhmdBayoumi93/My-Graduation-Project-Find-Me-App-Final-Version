import 'package:flutter/material.dart';

class PersonResultFound extends StatelessWidget {
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
              //   child: Image.asset('assets/images/face_scan.png'), // replace with your asset image path
              // ),
              SizedBox(height: 20),
              // Title Text
              Text(
                'تمكنا من الوصول لبعض المعثور عليهم المشابهين للمفقود',
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
                'نرجوا منك إدخال رقمك القومي لكي نتمكن من رؤية النتائج',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // National ID TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'الرقم القومي',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Continue Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PersonResultFound(), 
                  // Continue action ShowFoundedPersonDetails
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'متابعة',
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

void main() {
  runApp(MaterialApp(
    home: PersonResultFound(),
  ));
}
