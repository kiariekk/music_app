import 'package:flutter/material.dart';
import 'package:music_app/app/constants/app_constant.dart';

class AppTheme {
  static const Color _primaryColorLight =
      const Color.fromRGBO(217, 223, 253, 1);
  static const Color _primaryColor = const Color.fromRGBO(94, 119, 251, 1);

  static ThemeData get basic {
    return ThemeData(
      primarySwatch: Colors.indigo,
      primaryColor: _primaryColor,
      primaryColorLight: _primaryColorLight,
      fontFamily: FontConstant.poppins,
    );
  }
}
