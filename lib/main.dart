import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Controllers/climatisationController.dart';

import 'Controllers/securiteController.dart';
import 'Screens/Home/home.dart';
import 'Design/Themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ClimatisationProvider()),
        ChangeNotifierProvider(create: (_) => SecuriteProvider()),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: CustomTheme.darkTheme,
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}
