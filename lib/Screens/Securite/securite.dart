import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Controllers/securiteController.dart';
import 'package:tip_domotique/Widgets/barapp.dart';
import 'package:tip_domotique/Widgets/securiteWidgets.dart';
import 'package:tip_domotique/Widgets/myInterfaceWidgets.dart';
import 'package:tip_domotique/Widgets/videoPhoneWidgets.dart';
import '../../Design/colors.dart';

class SecuritePage extends StatefulWidget {
  const SecuritePage({Key? key}) : super(key: key);

  @override
  State<SecuritePage> createState() => _SecuriteState();
}

class _SecuriteState extends State<SecuritePage> {
  @override
  void initState() {
    SecuriteProvider securiteProvider;
    securiteProvider = Provider.of<SecuriteProvider>(context, listen: false);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SecuriteProvider>(
        builder: (BuildContext context, value, Widget? child) {
      return Scaffold(
        appBar: barapp(title: "Securite"),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: new ExactAssetImage('assets/png/background_app2.png'),
            fit: BoxFit.fill,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
          )),
          child: Row(
            children: [Cameras(), AjaxRemote()],
          ),
        ),
      );
    });
  }
}
