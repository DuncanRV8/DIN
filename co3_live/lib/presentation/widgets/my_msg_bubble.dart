import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMsgBubble extends StatelessWidget {
  const MyMsgBubble({super.key});

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
            child: Text('Mensaje mio',
              style: TextStyle(color: esquemaColor.inversePrimary)),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}


