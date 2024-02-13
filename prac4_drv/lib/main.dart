import 'package:flutter/material.dart';
import 'package:prac4_drv/screen/home_screen.dart';
import 'package:prac4_drv/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(colorSeleccionado: 0).generaTema(),
      title: 'Duncan Rua Valiente',
      home: HomeScreen()
    );
  }
}
