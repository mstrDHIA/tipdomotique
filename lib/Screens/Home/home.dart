import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Widgets/barapp.dart';
import 'package:tip_domotique/Widgets/myInterfaceWidgets.dart';
import 'package:tip_domotique/Widgets/videoPhoneWidgets.dart';
import '../../Design/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barapp(title: "Tip Smart Home"),
      body: Row(
        children: [
          MyInterface(
              w: 65.h,
              txt1: "Eclairage",
              img1: "assets/png/idea.png",
              txt2: "Securite",
              img2: "assets/png/alarm (1).png",
              txt3: "Climatisation",
              img3: "assets/png/air-conditioner (1).png",
              txt4: "Configuration",
              img4: "assets/png/settings.png",
              context: context),
          VideoPhone(),
        ],
      ),
    );
  }
}
