import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac2_drv/provider/discover_provider.dart';
import 'package:prac2_drv/scrollable/image_scrollable.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = Provider.of<DiscoverProvider>(context);
    return Center(
      child: Container(
        child: discoverProvider.isLoaded
            ?Stack(
                children: [
                  ImageScrollableView(imagePosts: discoverProvider.imagePost),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: Text(
                        discoverProvider.imagePost.isNotEmpty
                            ?'${discoverProvider.imagePost[discoverProvider.position].subt}'
                            :'',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
