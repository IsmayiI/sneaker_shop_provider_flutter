import 'package:flutter/material.dart';

final theme = ThemeData(
  // listTileTheme
  listTileTheme: ListTileThemeData(
    iconColor: Colors.grey.shade900,
    textColor: Colors.grey.shade900,
    titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
  ),

  // appBarTheme
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade300,
  ),

  // scaffoldBackgroundColor
  scaffoldBackgroundColor: Colors.grey.shade300,

  // drawerTheme
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.grey.shade300,
  ),
);
