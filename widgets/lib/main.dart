import 'package:flutter/material.dart';
import 'package:widgets/config/router/app_router.dart';
import 'package:widgets/config/theme/app_theme.dart';
import 'package:widgets/presentation/screen/button_screen.dart';
import 'package:widgets/presentation/screen/card_screen.dart';
import 'package:widgets/presentation/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      /*
      routes:appRouter2,

       */
      debugShowCheckedModeBanner: false,
      theme: AppTheme(colorSeleccionado: 4).generaTema(),
      title: 'Material App',
      );
    }
}
