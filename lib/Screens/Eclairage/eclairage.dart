import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Widgets/barapp.dart';
import 'package:tip_domotique/Widgets/myInterfaceWidgets.dart';
import 'package:tip_domotique/Widgets/videoPhoneWidgets.dart';
import '../../Design/colors.dart';

class EclairagePage extends StatefulWidget {
  const EclairagePage({Key? key}) : super(key: key);

  @override
  State<EclairagePage> createState() => _EclairageState();
}

class _EclairageState extends State<EclairagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barapp(title: "Eclairage"),
      body: Row(
        children: [
          MyInterface(
              w: 100.h,
              txt1: "Chambre 1",
              img1: "assets/png/living-room.png",
              txt2: "Chambre 2",
              img2: "assets/png/living-room.png",
              txt3: "Chambre 3",
              img3: "assets/png/living-room.png",
              txt4: "Chambre 4",
              img4: "assets/png/living-room.png"),
        ],
      ),
    );
  }
}
