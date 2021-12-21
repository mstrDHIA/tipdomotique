import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_domotique/Controllers/climatisationController.dart';
import 'package:tip_domotique/Design/textStyle.dart';

Widget Remote({required ClimatisationProvider provider}) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
      image: new ExactAssetImage('assets/png/background_app2.png'),
      fit: BoxFit.fill,
      colorFilter: new ColorFilter.mode(
          Colors.black.withOpacity(0.2), BlendMode.dstATop),
    )),
    child: Row(
      children: [Monitor(provider: provider), Controls(provider: provider)],
    ),
  );
}

Widget Controls({required ClimatisationProvider provider}) {
  return Container(
    width: 65.h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                PlusControlButton(provider: provider),
                SizedBox(
                  height: 15.h,
                ),
                MinusControlButton(provider: provider),
              ],
            ),
            Column(
              children: [
                PowerControlButton(provider: provider),
                SizedBox(
                  height: 15.h,
                ),
                ModeControlButton(provider: provider),
              ],
            )
          ],
        ),
        Row()
      ],
    ),
  );
}

// Widget ButtonsRow(
//     {
//     context}) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       RemoteButton(txt: txt1, img: img1, context: context),
//       RemoteButton(txt: txt2, img: img2, context: context),
//     ],
//   );
// }

Widget ModeControlButton({required ClimatisationProvider provider}) {
  return InkWell(
    onTap: () {
      provider.changeMode();
    },
    child: Container(
      width: 10.h,
      height: 10.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(500)),
          color: provider.modeColor,
          border: Border.all(color: Colors.black38, width: 2)),
      child: Icon(
        provider.modeIcon,
        size: 8.h,
      ),
    ),
  );
}

Widget PowerControlButton({required ClimatisationProvider provider}) {
  return InkWell(
    onTap: () {
      provider.changePower();
    },
    child: Container(
      width: 10.h,
      height: 10.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(500)),
          color: Colors.red[400],
          border: Border.all(color: Colors.black38, width: 2)),
      child: Icon(
        Icons.power_settings_new,
        size: 8.h,
      ),
    ),
  );
}

Widget PlusControlButton({required ClimatisationProvider provider}) {
  return InkWell(
    onTap: () {
      provider.addTemp();
    },
    child: Container(
      width: 10.h,
      height: 10.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(500)),
          color: Colors.white,
          border: Border.all(color: Colors.black38, width: 2)),
      child: Icon(
        Icons.add,
        size: 8.h,
      ),
    ),
  );
}

Widget MinusControlButton({required ClimatisationProvider provider}) {
  return InkWell(
    onTap: () {
      provider.decreaseTemp();
    },
    child: Container(
      width: 10.h,
      height: 10.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(500)),
          color: Colors.white,
          border: Border.all(color: Colors.black38, width: 2)),
      child: Icon(
        Icons.remove,
        size: 8.h,
      ),
    ),
  );
}

Widget Monitor({required ClimatisationProvider provider}) {
  return Padding(
    padding: const EdgeInsets.all(36.0),
    child: Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 1),
          ],
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      width: 27.h,
      height: 90.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                provider.power,
                style: monitorStyle(size: 40),
              ),
              Column(
                children: [
                  Text(
                    "-------",
                    style: monitorStyle(),
                  ),
                  Text(
                    provider.mode,
                    style: monitorStyle(size: 40),
                  ),
                  Text(
                    "-------",
                    style: monitorStyle(),
                  ),
                ],
              ),
            ],
          ),
          Text(
            provider.temp.toString() + "°",
            style: monitorStyle(),
          )
        ],
      ),
    ),
  );
}
