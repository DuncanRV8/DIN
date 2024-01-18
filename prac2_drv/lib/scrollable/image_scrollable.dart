import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../entity_domain/logic.dart';
import '../provider/discover_provider.dart';

class ImageScrollableView extends StatelessWidget {
  final List<ImagePost> imagePosts;

  ImageScrollableView({required this.imagePosts});

  @override
  Widget build(BuildContext context) {
    return Consumer<DiscoverProvider> (
      builder: (context, discoverProvider, _){
        return PageView.builder(
          onPageChanged: (int index){
            discoverProvider.updatePosition(index);
          },
            scrollDirection: Axis.vertical,
            itemCount: imagePosts.length,
            itemBuilder: (context, index) {
              return Image.asset(
                  imagePosts[index].url,
                fit: BoxFit.cover,
              );
            }
        );
      }
    );
  }
}
