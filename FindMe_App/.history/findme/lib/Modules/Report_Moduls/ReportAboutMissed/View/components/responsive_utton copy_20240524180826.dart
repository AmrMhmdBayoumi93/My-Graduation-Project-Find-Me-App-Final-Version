
import 'dart:ui';

import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/AppText.dart';
import 'package:findme/Modules/Report_Moduls/ReportAboutMissed/view/components/Colores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

// ignore: must_be_immutable
class ResponsiveButton extends GetView<OnBoardingControllerImp> {
  bool? isResponsive;
  double? width;
  String? text;
  Color? textColor;
  Color? color;
  Icon? icon;
  ResponsiveButton({
    super.key,
    this.width,
    this.isResponsive = false,
    this.text,
    this.color,
    this.icon,
    this.textColor,
  });
      
        @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: text == null
            ? Icon(
                Icons.location_on,
                color: Colors.white,
              )
            : Center(
                child: Apptext(
                color: Colores().whiteColorTheme,
                size: 20,
                text: '$text',
              )));
  }
}

class OnBoardingControllerImp {
}
