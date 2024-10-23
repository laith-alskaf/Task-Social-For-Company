import 'package:flutter/material.dart';

class AppColors {
  static Color mainColor = const Color(0xFF05101C);
  static Color error = Colors.red.shade600;
  static Color success = Colors.green.shade600;
  static Color textColor = const Color(0xFF363636);
  static const Color redColor = Color(0xFFDD222B);
  static Color whiteColor = const Color.fromRGBO(252, 255, 255, 1);
  static Color grayColor = const Color(0xFF929295);
  static const Color blackColor = Colors.black;
  static const Color greenColor = Colors.green;
  static Color mainWhite = const Color.fromRGBO(255, 255, 255, 1);
  static LinearGradient backgroundColor = const LinearGradient(
    colors: [
      Color.fromRGBO(5, 16, 28, 0.9),
      Color(0xFF05101C),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static LinearGradient backgroundColorStories = const LinearGradient(
    colors: [
      Color.fromRGBO(67, 90, 115, 0.3),
      Color.fromRGBO(24, 42, 62, 0.3),
    ],
    stops: [0.0, 1.0],
    transform: GradientRotation(92.47 * 3.1415926535 / 180),
  );
}
