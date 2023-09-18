// ignore_for_file: file_names
import 'package:flutter/material.dart';

class AppStyles {
  static  TextStyle boldWebText(double size, {color}) => TextStyle(
      fontSize: size,
      fontFamily: 'Axiforma-Black',
      fontWeight: FontWeight.bold,
      color: color ?? Colors.black);

  static TextStyle productInfo(weight) =>
      TextStyle(color: Colors.black, fontWeight: weight, fontSize: 18);

  static final darkBlue = Color.fromRGBO(20, 33, 61, 1);
  static final opacityBlue = Color.fromRGBO(64, 75, 96, .2);
  static final red = Color(0xfff33733);
  static final slightlyDarkerRed = Color(0xffDD3930);
  static final rosaEscuro = Color(0xFFe4004e);
  static final buttonPadding = EdgeInsets.symmetric(horizontal: 5, vertical: 5);
  static final roundedGreyButton = TextButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    backgroundColor: Colors.grey,
  );
  static final azulAcizentado = Color(0xff3d5866);
  static var cardShape = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));
}
