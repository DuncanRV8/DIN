import 'package:flutter/cupertino.dart';

import '../entity_domain/logic.dart';

class ImageScrollableView extends StatelessWidget {
  final List<ImagePost> imagePosts;

  ImageScrollableView({required this.imagePosts});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: imagePosts.length,
      itemBuilder: (context, index) {
          return Image.asset(imagePosts[index].url);
      }
    );
  }
}
