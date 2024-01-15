import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/mensaje.dart';

class MyMsgBubble extends StatelessWidget {
  final Mensaje msg;

  const MyMsgBubble({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    final esquemaColor = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(color: esquemaColor.primary,
            borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Text(msg.texto,
              style: TextStyle(color: esquemaColor.inversePrimary)),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}


