import 'dart:math';

import 'package:co3_live/presentation/screen/chat_screen.dart';
import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ColorScheme esquemaColor = Theme.of(context).colorScheme;
    final ThemeData tema =
        AppTheme(colorSelect: Random().nextInt(6)).generaTema();
    return MaterialApp(
      theme: tema,
      debugShowCheckedModeBanner: false,
      title: 'Chat Si/No',
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(backgroundImage: NetworkImage(
              'https://cdn.vox-cdn.com/thumbor/z22PWcixaBhYvShPwNs4vYEIcQk=/1400x788/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/24557677/bLXbO98.png'
            ),),
          ),
          title: Text('Interlocutor'),
        ),
        body: ChatScreen(),
      ),
    );
  }
}

