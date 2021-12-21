import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Design/textStyle.dart';
import 'package:tip_domotique/Screens/Configuration/climatisationConfiguration.dart';
import 'package:tip_domotique/Screens/Configuration/eclairageConfiguration.dart';
import 'package:tip_domotique/Screens/Configuration/securiteConfiguration.dart';

Widget ConfigurationItem(
    {context,
    required String title,
    required String txt,
    required String img}) {
  return Column(
    children: [
      ListTile(
        onTap: () {
          if (title == "Climatisation")
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ClimatisationConfiguration();
            }));
          if (title == "Eclairage")
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return EclairageConfiguration();
            }));
          if (title == "Securite")
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecuriteConfiguration();
            }));
        },
        minLeadingWidth: 5.h,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Image.asset(img),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          txt,
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Divider(
        color: Colors.white,
      ) 
    ],
  );
}
