import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.movie),
              SizedBox(width: 8),
              Text('Cartelera'),
            ],
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
