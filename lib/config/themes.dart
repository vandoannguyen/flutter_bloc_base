import 'package:flutter/material.dart';

import 'colors.dart';

final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    accentColor: Colors.blue,
    tabBarTheme: TabBarTheme(
        labelColor: Colors.blue,
        labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 17),
        unselectedLabelColor: Colors.black),
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.white54,
    // fontFamily: 'KleeDemibold',
    unselectedWidgetColor: PRIMARY_COLOR);

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  // fontFamily: 'KleeDemibold',
  backgroundColor: Color(0xFF000000),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black54,
);
