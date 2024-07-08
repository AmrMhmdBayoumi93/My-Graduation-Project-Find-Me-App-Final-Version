import 'package:flutter/material.dart';

class ReportMissedPersonP2 extends StatefulWidget {
  @override
  _ReportMissedPersonP2State createState() => _ReportMissedPersonP2State();
}

class _ReportMissedPersonP2State extends State<ReportMissedPersonP2> {
  String _selectedPerson = 'أسامه ا';
  String _selectedRelation = 'المدعوة';

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
              'قم برفع صور المفقود',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedPerson,
                    items: ['عمري مياسي', 'كارينا بيتر', 'أحمد محمد']
                        .map((person) => DropdownMenuItem<String>(
                              value: person,
                              child: Text(person),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedPerson = value!;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'اختر صورة',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedRelation,
                    items: ['المدعوة', 'المخبر']
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
                hintText: 'أرقام التواصل',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'أو تندريد الموقع الإلكتروني',
                border: OutlineInputBorder(),
              ),
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