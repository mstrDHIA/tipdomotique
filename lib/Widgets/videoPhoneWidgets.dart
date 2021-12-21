// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: non_constant_identifier_names
Widget VideoPhone() {
  return Monitor();
}

Widget Monitor() {
  return Container(
    decoration: BoxDecoration(color: Colors.black54, boxShadow: [
      BoxShadow(
          offset: Offset(-4, 0),
          color: Colors.black87,
          blurRadius: 5,
          spreadRadius: 2)
    ]),
    child: Padding(
      padding: const EdgeInsets.all(36.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.white, blurRadius: 1),
            ],
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 27.h,
        height: 90.w,
        child: Center(
            child: Icon(
          Icons.camera_alt,
          size: 50,
          color: Colors.white54,
        )),
      ),
    ),
  );
}
