import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  Color _colorFondo = Colors.black;
  Color _colorBorde = Colors.purple;
  Random _random = Random();
  double _altura = 300;
  double _anchura = 300;
  double _radio = 100;

  AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  Color randomColor() {
    final int rojo = Random().nextInt(256);
    final int verde = Random().nextInt(256);
    final int azul = Random().nextInt(256);
    return Color.fromARGB(rojo, verde, azul, 255);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: widget._altura,
          width: widget._anchura,
          decoration: BoxDecoration(
              color: widget._colorFondo,
              borderRadius: BorderRadius.circular(widget._radio),
          border: Border.all(color: widget._colorBorde, width: 3)),
          duration: Duration(seconds: 2),
          curve: Curves.bounceInOut,
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            widget._colorFondo = randomColor();
            widget._colorBorde = randomColor();
            widget._altura = Random().nextInt(700).toDouble();
            widget._anchura = Random().nextInt(300).toDouble();
            widget._radio = Random().nextInt(100).toDouble();
            randomColor();
            setState(() {
            });
          },
          child: Icon(Icons.play_arrow)),
    );
  }
}
