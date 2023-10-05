import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      primarySwatch: Colors.red,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.blue),
      ));
}
