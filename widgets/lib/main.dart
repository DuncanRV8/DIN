import 'package:flutter/material.dart';
import 'package:widgets/config/theme/app_theme.dart';
import 'package:widgets/presentation/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(colorSeleccionado: 2).generaTema(),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Catalogo de Widgets'),
        ),
        body: HomeScreen(),
          ),
        );
    }
}
