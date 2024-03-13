import 'package:flutter/material.dart';

class AppColors {
  static const Color grey = Color(0xFF7C7C7C);
  static const Color primary = Color(0xFF454545);
  static const Color lightGrey = Color(0xFFECECEC);
  static const Color text = Color(0xFF7C7C7C);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color green = Colors.green;
  static const Color border = Color(0xFFE8E6EA);
  static const Color warning = Colors.red;
  // static const Color theme = Color(0xFFe74c3c);
  static const Color theme = Colors.white;
  static const Color lightWhite = Color(0xFFe5faf3);
  static const Color yellow = Color(0xFFd69a3c);
  static const Color screenBackground = Color(0xFFfafafa);
  static const Color container = Color(0xFFf5f5f5);
  static const Color cardText = Color(0xFF4a8f8a);
  static const kActiveFieldBoarderClr = Color(0xFFDDDDDD);
  static const kSimpleBtnClr = Color(0xffff9966);
  static const kInputFieldFillColor = white;
  static const kFieldBoardColor = Color(0xffc0c0c0);

  // New gradient colors
  static const gradientBtnClr = LinearGradient(
    colors: [Color(0xff23bcba), Color(0xff45e994)],
    stops: [0, 1],
    begin: Alignment(-0.99, 0.14),
    end: Alignment(0.99, -0.14),
  );

  static const gradientBlueBtnClr = LinearGradient(
    colors: [Color(0xff2368bc), Color(0xff458fe9)],
    stops: [0, 1],
    begin: Alignment(-0.99, 0.14),
    end: Alignment(0.99, -0.14),
  );
}
