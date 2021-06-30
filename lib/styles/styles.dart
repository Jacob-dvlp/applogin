import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles {
  TextStyle textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 34);
  TextStyle textStyle2 = TextStyle(color: Colors.grey, fontSize: 18);
}

class Colores extends Color {
  static int _colors(String color) {
    color = color.toUpperCase().replaceAll("#", "");
    if (color.length == 6) {
      color = "FF" + color;
    }
    return int.parse(color, radix: 16);
  }

  Colores(final String color) : super(_colors(color));
}

