import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenGradient extends StatelessWidget {
  final Widget child;
  final List<Color> colors;
  final List<double> stops;
  const ScreenGradient({super.key, required this.child, this.colors= const[Colors.transparent,Colors.purple], this.stops = const [0.75,1]});

  @override
  Widget build(BuildContext context) {
    return  SizedBox.expand(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: stops ,
                    colors: colors)),
            child: child));
  }
}

