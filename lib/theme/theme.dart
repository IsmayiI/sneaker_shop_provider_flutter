import 'package:flutter/material.dart';

final theme = ThemeData(
  // listTileTheme
  listTileTheme: ListTileThemeData(
    tileColor: Colors.white70,
    iconColor: Colors.grey.shade900,
    textColor: Colors.grey.shade900,
    titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
    subtitleTextStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
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
