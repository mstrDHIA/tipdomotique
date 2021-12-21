import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClimatisationProvider extends ChangeNotifier {
  int temp = 0;
  int maxTemp = 50;
  int minTemp = 0;
  int oldtemp = 24;
  String mode = "-";
  String oldmode = "FROIDS";
  String power = "OFF";
  bool isOn = false;
  bool isCold = true;
  Color? modeColor = Colors.blue[200];
  IconData modeIcon = Icons.water;
  void addTemp() {
    if (isOn) {
      if (temp < 50) {
        temp++;
        notifyListeners();
      }
    }
  }

  changeMaxTemp(int newTemp) {
    maxTemp = newTemp;
    notifyListeners();
  }

  changeMinTemp(int newTemp) {
    minTemp = newTemp;
    notifyListeners();
  }

  void decreaseTemp() {
    if (isOn) {
      if (temp > 0) {
        temp--;
        notifyListeners();
      }
    }
  }

  void changeMode() {
    if (isOn) {
      if (isCold) {
        isCold = false;
        mode = "CHAUX";
        modeIcon = Icons.water;
        modeColor = Colors.blue[200];

        notifyListeners();
      } else {
        isCold = true;

        mode = "FROIDS";
        modeIcon = Icons.fireplace_outlined;
        modeColor = Colors.red[200];

        notifyListeners();
      }
    }
  }

  void changePower() {
    if (!isOn) {
      isOn = true;
      power = "ON";
      mode = oldmode;
      temp = oldtemp;
      notifyListeners();
    } else {
      isOn = false;
      power = "OFF";
      oldmode = mode;
      mode = "-";
      oldtemp = temp;
      temp = 0;
      notifyListeners();
    }
  }
}
