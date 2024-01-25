import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac2_drv/provider/dicover_video_provider.dart';
import 'package:provider/provider.dart';

class ButtonColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DiscoverProvider dProvider = context.watch<DiscoverProvider>();
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
              dProvider.toggleAudio();
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
