import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indicadores de progresos"),
      ),
        body: _ProgressView());
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const CircularProgressIndicator(
            strokeAlign: -0.8,
            strokeWidth: 8,
            backgroundColor: Colors.grey,),
          const SizedBox(height: 20),
          Text("CircularProgresIndicator", style: TextStyle(fontSize: 25),),
          const SizedBox(height: 20),
          _ControllerWidgetIndicator(),
          Text("Circular & LinealProgress", style: TextStyle(fontSize: 25)),
        ],
      ),
    );
  }
}

class _ControllerWidgetIndicator extends StatelessWidget {
  const _ControllerWidgetIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 20),
          Expanded(child: LinearProgressIndicator()),
        ],
      ),
    );
  }
}
