import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac2_drv/provider/discover_provider.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = Provider.of<DiscoverProvider>(context);
    return Center(
      child: Container(
        //child: Text('${discoverProvider.imagePost.length}',style: TextStyle(fontSize: 40),)
        child: discoverProvider.isLoaded
            ?Placeholder(
                fallbackHeight: 200,
                fallbackWidth: 200,
            )
            :CircularProgressIndicator()
      ),
    );
  }
}
