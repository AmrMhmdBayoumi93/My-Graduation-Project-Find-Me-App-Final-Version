import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:findme/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EditAccountPage extends StatefulWidget {
  const EditAccountPage({super.key});

  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    nameController.text = FirebaseAuth.instance.currentUser?.displayName ?? '';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "تعديل حسابي",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                child: Text(
                  "${FirebaseAuth.instance.currentUser?.displayName?.substring(0, 1)}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: nameController,
                validator: (vlaue) {
                  if (vlaue == null || vlaue.isEmpty) {
                    return 'من فضلك ادخل كلمة المرور';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.right,
                decoration: decoration.copyWith(
                  hintText: 'الاسم بالكامل',
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  await FirebaseAuth.instance.currentUser
                      ?.updateDisplayName(nameController.text);
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReportScreen(),
                    ),
                    (route) => false,
                  );
                }
              },
              child: const Text(
                "حفظ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration decoration = InputDecoration(
    //   labelText: 'اسم المستخدم',
    //   floatingLabelAlignment: FloatingLabelAlignment.center,
    hintText: '  البريد الالكتروني',
    hintStyle: const TextStyle(fontSize: 25),
    prefixIcon: const Icon(Icons.email_rounded),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color.fromARGB(255, 88, 208, 255)),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 198, 16, 6),
      ),
    ),
  );
}
