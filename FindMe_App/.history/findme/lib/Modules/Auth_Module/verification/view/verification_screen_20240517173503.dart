import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'إنشاء حساب',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
           
            SizedBox(height: 40),
            Text(
              'للتسجيل ادخل رقم الموبايل',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixText: '+20',
                prefixStyle: TextStyle(color: Colors.black),
                hintText: 'أدخل رقم الهاتف',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff056C95), // backgroundColor in newer versions
                minimumSize: const Size(240, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => 
               
               ))
              },
              child: Text(
                'التالي',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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


// class StepIndicator extends StatelessWidget {
//   const StepIndicator({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(5, (index) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 4.0),
//           child: Container(
//             width: 40,
//             height: 8,
//             decoration: BoxDecoration(
//               color: index == 0 ? Colors.red : Colors.grey,
//               borderRadius: BorderRadius.circular(4.0),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }