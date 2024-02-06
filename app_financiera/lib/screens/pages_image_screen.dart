import 'package:flutter/cupertino.dart';

class PagesImageScreen extends StatelessWidget {
  const PagesImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: PageView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/images/${index + 1}.png',
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}
