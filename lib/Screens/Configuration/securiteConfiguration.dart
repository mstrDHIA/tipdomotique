import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tip_domotique/Widgets/barapp.dart';
import '../../Design/colors.dart';

class SecuriteConfiguration extends StatefulWidget {
  @override
  State<SecuriteConfiguration> createState() => _SecuriteConfigurationState();
}

class _SecuriteConfigurationState extends State<SecuriteConfiguration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barapp(title: "Securite Configuration"),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
        image: new ExactAssetImage('assets/png/background_app2.png'),
        fit: BoxFit.fill,
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.2), BlendMode.dstATop),
      ))),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
