import 'package:flutter/material.dart';

class ReportMissedPersonP2 extends StatefulWidget {
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
      body: Padding(
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
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedGender,
                    items: ['الذكر', 'الأنثى']
                        .map((gender) => DropdownMenuItem<String>(
                              value: gender,
                              child: Text(gender),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'الجنس',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedRelation,
                    items: ['الأب', 'الأم', 'الأخ', 'الأخت', 'الابن', 'الابنة', 'آخرى']
                        .map((relation) => DropdownMenuItem<String>(
                              value: relation,
                              child: Text(relation),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedRelation = value!;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'العلاقة',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'تاريخ الاختفاء',
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
            TextField(
              decoration: InputDecoration(
                hintText: 'ملاحظات إضافية',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: Text('بلاغ عن الشخص المفقود'),
            ),
          ],
        ),
      ),
    );
  }
}