import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dicover_video_provider.dart';
import '../scrollable/video_scrollable.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tam = MediaQuery.of(context).size;
    final discoverProvider = Provider.of<DiscoverProvider>(context);
    return Center(
      child: Container(
        child: discoverProvider.isLoaded
            ?Stack(
                children: [
                  VideoScrollableView(videoPosts: discoverProvider.videoPost),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: SizedBox(
                      width: tam.width*0.7,
                      child: Text(
                          discoverProvider.videoPost.isNotEmpty
                              ?'${discoverProvider.videoPost[discoverProvider.position].subt}'
                              :'',
                        maxLines: 2,
                        style: const TextStyle(
                          shadows: [Shadow(offset: Offset(2, 2),color: Colors.black,blurRadius: 3)],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
            )
            :const CircularProgressIndicator()
      ),
    );
  }
}
