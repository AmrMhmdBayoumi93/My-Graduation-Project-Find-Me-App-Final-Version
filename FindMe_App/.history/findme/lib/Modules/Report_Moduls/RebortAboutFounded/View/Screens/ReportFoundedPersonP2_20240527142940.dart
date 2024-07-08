import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ReportMissedPersonP2 extends StatefulWidget {
  const ReportMissedPersonP2({Key? key}) : super(key: key);

  @override
  _ReportMissedPersonP2State createState() => _ReportMissedPersonP2State();
}

class _ReportMissedPersonP2State extends State<ReportMissedPersonP2> {
  List<File> _images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _images.add(File(ppickedFile!.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إبلاغ عن معثور عليه'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'شكراً لإيجابيتك ورغبتك في المساعدة',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.camera_alt, size: 50, color: Colors.blue),
                      Text('قم برفع صور المعثور عليه'),
                      Text(
                        'يجب رفع صور تحتوي على المفقود فقط',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _images.isNotEmpty
                ? Wrap(
                    spacing: 10,
                    children: _images.map((image) {
                      return CircleAvatar(
                        backgroundImage: FileImage(image),
                        radius: 40,
                      );
                    }).toList(),
                  )
                : const SizedBox.shrink(),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'المحافظة',
                border: OutlineInputBorder(),
              ),
              items: const <String>['محافظة 1', 'محافظة 2', 'محافظة 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'المنطقة',
                border: OutlineInputBorder(),
              ),
              items: const <String>['منطقة 1', 'منطقة 2', 'منطقة 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.map),
              label: const Text('قم بتحديد الموقع على الخريطة'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('التالي'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const ReportMissedPersonP2(),
  ));
}
