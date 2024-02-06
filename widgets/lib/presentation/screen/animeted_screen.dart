import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body: Placeholder(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.play_arrow)),
    );
  }
}
