import 'package:app_financiera/screens/home_screen.dart';
import 'package:app_financiera/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(colorSeleccionado: 0).generaTema(),
      title: 'Duncan Rua',
      home: HomeScreen()
    );
  }
}
