import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/cubit/missed_cubit.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/screens/ReportMissedPersonP2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportMissedPersonP1 extends StatefulWidget {
  const ReportMissedPersonP1({super.key});

  @override
  _ReportMissedPersonP1State createState() => _ReportMissedPersonP1State();
}
 
class _ReportMissedPersonP1State extends State<ReportMissedPersonP1> {
  String _selectedGender = 'الذكر';
  final String _selectedRelation = 'الأب';
  String _selectedage = '18';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MissedCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إبلاغ عن شخص مفقود'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: context.read<MissedCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'عن الشخص المفقود',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: context.read<MissedCubit>().nameController,
                  decoration: const InputDecoration(
                    hintText: 'الأسم',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الأسم مطلوب';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
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
                        decoration: const InputDecoration(
                          hintText: 'الجنس',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: _selectedage,
                        items: [
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10',
                          '11',
                          '12',
                          '13',
                          '14',
                          '15',
                          '16',
                          '17',
                          '18',
                          '19',
                          '20'
                        ]
                            .map((age) => DropdownMenuItem<String>(
                                  value: age,
                                  child: Text(age),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedage = value!;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: 'السن',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.2,
                ),
                TextFormField(
                  controller: context.read<MissedCubit>().dateOfMissController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'من فضلك ادخل تاريخ الاختفاء';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    hintText: 'تاريخ الاختفاء',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16.2,
                ),
                TextFormField(
                  controller: context.read<MissedCubit>().addressController,
                  keyboardType: TextInputType.streetAddress,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'من فضلك ادخل مكان الاختفاء'
                      : null,
                  decoration: const InputDecoration(
                    hintText: 'مكان الاختفاء',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'رقم للتواصل',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity, // Ensure it takes up available width
                  child: TextFormField(
                    controller: context.read<MissedCubit>().phoneController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'من فضلك ادخل رقم للتواصل';
                      }
                      return null;
                    },
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
                const SizedBox(height: 16.0),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'من فضلك ادخل ملاحظاتك';
                    }
                    return null;
                  },
                  controller: context.read<MissedCubit>().descriptionController,
                  decoration: const InputDecoration(
                    hintText: 'ملاحظات إضافية',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 28.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    if (context
                        .read<MissedCubit>()
                        .formKey
                        .currentState!
                        .validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                    create: (context) => MissedCubit(),
                                    child: const ReportMissedPersonP2(),
                                  )));
                    }
                  },
                  child: const Text(
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
        ),
      ),
    );
  }
}
