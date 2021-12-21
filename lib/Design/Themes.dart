import 'package:flutter/material.dart';
import 'package:tip_domotique/Design/colors.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    //1
    return ThemeData(
        //2
        primaryColor: myColors.primaryColor,
        scaffoldBackgroundColor: Colors.black12,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: myColors.primaryColor,
        ));
  }
}
