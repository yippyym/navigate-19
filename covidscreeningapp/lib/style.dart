import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//reusable colours
Color customGrey = const Color.fromRGBO(166, 166, 166, 1);

//resuable text decoration
class Navigate19TextStyle {
  static TextStyle oswaldHeading() {
    return _textStyle('Oswald', Colors.black, 40, FontWeight.w400);
  }

  static TextStyle oswaldButton() {
    return _textStyle('Oswald', Colors.black, 24, FontWeight.w400);
  }

  static TextStyle montserratDesc() {
    return _textStyle('Montserrat', Colors.black, 16, FontWeight.w400);
  }

  static TextStyle montserratDescGrey() {
    return _textStyle('Montserrat', customGrey, 16, FontWeight.w400);
  }

  static TextStyle montserratDescBold() {
    return _textStyle('Montserrat', Colors.black, 16, FontWeight.w700);
  }

  static TextStyle _textStyle(
      String fontFamily, Color color, double size, FontWeight fontWeight) {
    return TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: size,
        fontWeight: fontWeight);
  }
}

//reusable button styling
class Navigate19ButtonStyle {
  static ButtonStyle blackOutlineButton() {
    return _buttonStyle(
      MaterialStateProperty.all(Colors.white),
      MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.black, width: 3),
      )),
    );
  }

  static ButtonStyle _buttonStyle(
      MaterialStateProperty<Color> backgroundColor, shape) {
    return ButtonStyle(backgroundColor: backgroundColor, shape: shape);
  }
}
