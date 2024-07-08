import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_project/Widgets/Colores.dart';

class Cusrom_Drop_Down_Button extends StatelessWidget {
  Cusrom_Drop_Down_Button(
      {required this.droppedValue, required this.values, this.width});
  String? droppedValue;
  double? width;
  List<String?> values = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.7),
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: DropdownButton<String?>(
          icon: Icon(Icons.arrow_drop_down),
          iconEnabledColor: Colors.black,
          style: TextStyle(
              fontFamily: 'Tajawal', color: Colores().blackColorTheme),
          value: droppedValue,
          onChanged: (String? newValue) {
            droppedValue = newValue;
          },
          items: values.map<DropdownMenuItem<String?>>((String? value) {
            return DropdownMenuItem(value: value, child: Text('$value'));
          }).toList(),
        ),
      ),
    );
  }
}
