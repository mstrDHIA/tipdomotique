import 'package:flutter/material.dart';
import 'package:tip_domotique/Design/colors.dart';

AppBar barapp({required String title}) {
  return AppBar(
    backgroundColor: myColors.primaryColor,
    title: Text(title),
    centerTitle: true,
  );
}
