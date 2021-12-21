import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Screens/Climatisation/climatisation.dart';
import 'package:tip_domotique/Screens/Configuration/configuration.dart';
import 'package:tip_domotique/Screens/Eclairage/eclairage.dart';
import 'package:tip_domotique/Screens/Securite/securite.dart';

Widget MyInterface(
    {required double w,
    required String txt1,
    required String img1,
    required String txt2,
    required String img2,
    required String txt3,
    required String img3,
    required String txt4,
    required String img4,
    context}) {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xff141414),
        image: DecorationImage(
          image: new ExactAssetImage('assets/png/background_app2.png'),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
        )),
    width: w,
    child: Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconsRow(
              txt1: txt1, img1: img1, txt2: txt2, img2: img2, context: context),
          IconsRow(
              txt1: txt3, img1: img3, txt2: txt4, img2: img4, context: context)
        ],
      ),
    ),
  );
}

Widget IconsRow(
    {required String txt1,
    required String img1,
    required String txt2,
    required String img2,
    context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconApp(txt: txt1, img: img1, context: context),
      IconApp(txt: txt2, img: img2, context: context),
    ],
  );
}

Widget IconApp({required String txt, required String img, context}) {
  return InkWell(
      onTap: () {
        if (txt == 'Eclairage')
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EclairagePage();
          }));
        if (txt == 'Climatisation') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ClimatisationPage();
          }));
        }
        if (txt == 'Configuration') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ConfigurationPage();
          }));
        }
        if (txt == 'Securite') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecuritePage();
          }));
        }
      },
      child: Container(
          width: 18.h,
          height: 18.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, -3), color: Colors.white, blurRadius: 1)
              ]),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              img,
              scale: 1.2,
            ),
            SizedBox(
              height: 2.w,
            ),
            Text(
              txt,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ])));
}
