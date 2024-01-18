import 'package:flutter/material.dart';
import 'package:prac2_drv/button/buttons.dart';
import 'package:prac2_drv/provider/discover_provider.dart';
import 'package:provider/provider.dart';
import 'theme/theme.dart';
import 'screen/discover_screen.dart';

void main() => runApp(
ChangeNotifierProvider(
    create: (context) => DiscoverProvider()..loandingListImagePost(),
    child: MyApp(),
  ),
);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme().generateThema();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Duncan Rua',
        theme: theme,
        home: Scaffold(
          body: Center(
            child: Container(
              child: DiscoverScreen()
            ),
          ),
          floatingActionButton: ButtonColumn(),
        ),
      );
    }
}