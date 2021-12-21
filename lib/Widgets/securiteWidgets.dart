import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

Widget Cameras() {
  return Container(
    child: Column(
      children: [
        Row(children: [
          Camera(color: Colors.blue),
          Camera(color: Colors.green)
        ]),
        Row(children: [Camera(color: Colors.yellow), Camera(color: Colors.red)])
      ],
    ),
  );
}

Widget Camera({required Color color}) {
  return Container(
    width: 33.h,
    height: 45.3.w,
    decoration: BoxDecoration(
        color: Colors.black, boxShadow: [BoxShadow(color: Colors.white)]
        // border: Border.all(color: Colors.white, width: 0.2)
        ),
    child: Icon(
      Icons.camera_alt_rounded,
      color: Colors.white60,
      size: 45,
    ),
  );
}

Widget AjaxRemote() {
  return Container(
    constraints: BoxConstraints(maxHeight: 90.w, maxWidth: 32.h),
    child: Stack(
      children: [
        Positioned(
            right: 5.h,
            top: 15.w,
            child: Image.asset("assets/png/AJAX-Spacecontrol-500x332-1.png")),
      ],
    ),
  );
}

Widget RemoteButton() {
  return InkWell(
    child: Container(
      height: 5.w,
      width: 5.h,
      decoration: BoxDecoration(color: Colors.red),
    ),
  );
}
