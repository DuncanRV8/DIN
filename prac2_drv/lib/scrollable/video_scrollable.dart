import 'package:flutter/cupertino.dart';
import 'package:prac2_drv/screen/FullScreenVieoPlayer.dart';
import 'package:provider/provider.dart';

import '../entity_domain/logic_video.dart';
import '../provider/dicover_video_provider.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videoPosts;

  VideoScrollableView({required this.videoPosts});

  @override
  Widget build(BuildContext context) {
    return Consumer<DiscoverProvider> (
        builder: (context, discoverProvider, _){
          return PageView.builder(
              onPageChanged: (int index){
                discoverProvider.updatePosition(index);
              },
              scrollDirection: Axis.vertical,
              itemCount: videoPosts.length,
              itemBuilder: (context, index) {
                return FullScreenVideoPlayer(url: videoPosts[index].url);
              }
          );
        }
    );
  }
}
