import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            // Lógica para el botón favorito
          },
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {
          },
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: Icon(
            Icons.remove_red_eye,
            color: Colors.deepPurple, // Color modificado
          ),
        ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 2),
          child: FloatingActionButton(
            onPressed: () {
            },
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            child: Icon(
              Icons.play_circle,
              color: Colors.green, // Color modificado
            ),
          ),
        ),
      ],
    );
  }
}
