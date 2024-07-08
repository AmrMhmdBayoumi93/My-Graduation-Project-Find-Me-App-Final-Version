import 'package:flutter/material.dart';

class ReportMissedPersonP1 extends StatefulWidget {
  const ReportMissedPersonP1({Key? key}) : super(key: key);

  @override
  State<ReportMissedPersonP1> createState() => _ReportMissedPersonP1State();
}

class _ReportMissedPersonP1State extends State<ReportMissedPersonP1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إبلاغ عن مفقود'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              const Icon(Icons.info_outline, size: 48.0, color: Colors.blue),
              const SizedBox(height: 8.0),
              const Text(
                'من فضلك قم بملئ أكبر عدد ممكن من بيانات المفقود لنساعدنا في سرعة الوصول إلى المفقود',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'اسم المفقود',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'من فضلك أدخل اسم المفقود';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'الجنيس',
                      ),
                      value: 'مصر',
                      items: <String>['مصر', 'غير مصري']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك اختر الجنسية';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'السن',
                      ),
                      value: '18',
                      items: <String>['18', '19', '20', '21', '22']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك اختر السن';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'تاريخ التغيب',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'من فضلك أدخل تاريخ التغيب';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'مُميزات المفقود',
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'من فضلك أدخل مميزات المفقود';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              const Text(
                'وصف الملابس والعلامات التي تميزه بالتفصيل',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'العلامات',
                      ),
                      value: 'ندبة',
                      items: <String>['ندبة', 'وشم', 'غير ذلك']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك اختر العلامات';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'المنطقة',
                      ),
                      value: 'الوجه',
                      items: <String>['الوجه', 'الذراع', 'القدم', 'غير ذلك']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك اختر المنطقة';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'او قم بتحديد الموقع على الخريطة',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 32.0,
                  ),
                  textStyle: const TextStyle(fontSize: 16.0),
                ),
                child: const Icon(Icons.location_pin, size: 24.0),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'رقم التواصل',
                  suffixIcon: Text('+20'),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'من فضلك أدخل رقم التواصل';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                   Na //  ReportMissedPersonP2
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 32.0,
                  ),
                  textStyle: const TextStyle(fontSize: 16.0),
                ),
                child: const Text('بحث عن مفقود'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}