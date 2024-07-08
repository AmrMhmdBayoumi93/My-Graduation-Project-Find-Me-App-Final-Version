import 'package:flutter/material.dart';

class TopOfRegScreenWidget extends StatelessWidget {
  const TopOfRegScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Find Me!',
            style: TextStyle(
              color: Color(0xff056C95),
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'سجل حساب جديد',
            style: TextStyle(
              color: Color(0xff056C95),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )
        ]));
  }
}
