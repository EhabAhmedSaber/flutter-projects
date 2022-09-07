import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;

  void changeColors() {
    Color tempColor = color1;
    color1 = color2;
    color2 = tempColor;
    notifyListeners();
  }

  void resetColors() {
    color1 = Colors.red;
    color2 = Colors.blue;
    notifyListeners();
  }
}
