import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tip_domotique/Widgets/ConfigurationWidgets.dart';
import 'package:tip_domotique/Widgets/barapp.dart';
import '../../Design/colors.dart';

class ConfigurationPage extends StatefulWidget {
  @override
  State<ConfigurationPage> createState() => _ConfigurationState();
}

class _ConfigurationState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: barapp(title: "Configuration"),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: new ExactAssetImage('assets/png/background_app2.png'),
            fit: BoxFit.fill,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
          )),
          child: ListView(
            children: [
              ConfigurationItem(
                  context: context,
                  title: "Climatisation",
                  txt: "Tapez ici pour configurez votre climatisation",
                  img: "assets/png/air-conditioner.png"),
              ConfigurationItem(
                  context: context,
                  title: "Securite",
                  txt: "Tapez ici pour configurez votre Securite",
                  img: "assets/png/alarm.png"),
              ConfigurationItem(
                  context: context,
                  title: "Eclairage",
                  txt: "Tapez ici pour configurez votre Eclairage",
                  img: "assets/png/idea (1).png"),
              ConfigurationItem(
                  context: context,
                  title: "Themes",
                  txt: "Tapez ici pour configurez votre Themes",
                  img: "assets/png/themes (2).png"),
              ConfigurationItem(
                  context: context,
                  title: "Profile",
                  txt: "Tapez ici pour configurez votre Profile",
                  img: "assets/png/profile (1).png"),
            ],
          ),
        ));
    // TODO: implement build
    throw UnimplementedError();
  }
}
