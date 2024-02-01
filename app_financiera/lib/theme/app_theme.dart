import 'package:flutter/material.dart';

final  List<Color>listaColores = [
  Colors.blueGrey,
];

class AppTheme {
  final int colorSeleccionado;

  AppTheme({required this.colorSeleccionado});

  ThemeData generaTema() {
    return ThemeData(
        colorSchemeSeed: listaColores[colorSeleccionado],
        appBarTheme: AppBarTheme(
            color: listaColores[colorSeleccionado]
        ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: listaColores[0],
      ),
    );
  }
}