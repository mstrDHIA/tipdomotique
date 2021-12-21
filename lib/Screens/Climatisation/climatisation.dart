import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Controllers/climatisationController.dart';
import 'package:tip_domotique/Widgets/barapp.dart';
import 'package:tip_domotique/Widgets/climatisationwidgets.dart';
import 'package:tip_domotique/Widgets/myInterfaceWidgets.dart';
import 'package:tip_domotique/Widgets/videoPhoneWidgets.dart';
import '../../Design/colors.dart';

class ClimatisationPage extends StatefulWidget {
  const ClimatisationPage({Key? key}) : super(key: key);

  @override
  State<ClimatisationPage> createState() => _ClimatisationState();
}

class _ClimatisationState extends State<ClimatisationPage> {
  @override
  Widget build(BuildContext context) {
    ClimatisationProvider climatisationProvider;
    climatisationProvider =
        Provider.of<ClimatisationProvider>(context, listen: false);
    return Consumer<ClimatisationProvider>(
        builder: (BuildContext context, value, Widget? child) {
      return Scaffold(
        appBar: barapp(title: "Climatisation"),
        body: Container(child: Remote(provider: climatisationProvider)),
      );
    });
  }
}
