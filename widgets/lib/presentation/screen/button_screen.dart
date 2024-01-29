import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pantalla de tarjetas")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //De la tercera forma seria
            //context.pop();

            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
              spacing: 10,
              children: [
            ElevatedButton(
              onPressed: () {  },
              child: const Text("ElevationButton"),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text("ElevationButton.off"),
            ),
          ]),
        ));
    }
}
