import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/Colores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cusrom_Drop_Down_Button extends StatefulWidget {
  final String? initialValue;
  final List<String?> values;
  final double? width;

  Cusrom_Drop_Down_Button({
    required this.initialValue,
    required this.values,
    this.width, required String droppedValue,
  });

  @override
  _Cusrom_Drop_Down_ButtonState createState() => _Cusrom_Drop_Down_ButtonState();
}

class _Cusrom_Drop_Down_ButtonState extends State<Cusrom_Drop_Down_Button> {
  String? _droppedValue;

  @override
  void initState() {
    super.initState();
    _droppedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
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
          value: _droppedValue,
          onChanged: (String? newValue) {
            setState(() {
              _droppedValue = newValue;
            });
          },
          items: widget.values.map<DropdownMenuItem<String?>>((String? value) {
            return DropdownMenuItem(value: value, child: Text('$value'));
          }).toList(),
        ),
      ),
    );
  }
}
