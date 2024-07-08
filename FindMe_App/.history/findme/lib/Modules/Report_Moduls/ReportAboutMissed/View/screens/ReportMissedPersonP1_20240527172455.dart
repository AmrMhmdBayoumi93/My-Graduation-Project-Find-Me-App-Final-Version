import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/ReportMissedPersonP2.dart';
import 'package:flutter/material.dart';

class ReportMissedPersonP1 extends StatefulWidget {
  @override
  _ReportMissedPersonP1State createState() => _ReportMissedPersonP1State();
}

class _ReportMissedPersonP1State extends State<ReportMissedPersonP1> {
  String _selectedGender = 'الذكر';
  String _selectedRelation = 'الأب';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إبلاغ عن شخص مفقود'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'عن الشخص المفقود',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'الأسم',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'مكان الاختفاء',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            const Text(
              'رقم للتواصل',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity, // Ensure it takes up available width
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  prefixText: '+20 ',
                  prefixStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'ادخل رقم للتواصل',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'ملاحظات إضافية',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 28.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReportMissedPersonP2()));
              },
              child: Text(
                'بلاغ عن الشخص المفقود',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
