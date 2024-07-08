
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/Colores.dart';
import 'package:flutter/cupertino.dart';

class CustomText_Field extends StatelessWidget {
  CustomText_Field(
      {required this.maxAndMinLines,
      this.hintText,
      this.labelText,
      this.icon,
      this.onChanged});
  String? labelText;
  String? hintText;
  IconData? icon;
  int? maxAndMinLines;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    Colores colores = Colores();
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
        if (data.length < 6) {
          return 'Field must not be less than 6 characters';
        }
      },
      maxLines: maxAndMinLines,
      minLines: maxAndMinLines,
      onChanged: onChanged,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.5),
        filled: true,
        hintText: hintText!,
        hintStyle: TextStyle(color: colores.blackColorTheme),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                BorderSide(color: Colors.grey.withOpacity(0.5), width: 0)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0),
        ),
      ),
    );
  }
}
