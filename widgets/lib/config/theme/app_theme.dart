import 'package:flutter/material.dart';

final  List<Color>listaColores = [
  Colors.red,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.purple
];

class AppTheme {
  final int colorSeleccionado;

  AppTheme({required this.colorSeleccionado});
  
  ThemeData generaTema() {
    return ThemeData(
      colorSchemeSeed: listaColores[colorSeleccionado],
      appBarTheme: AppBarTheme(
        color: listaColores[colorSeleccionado]
      )
    );
  }
}

