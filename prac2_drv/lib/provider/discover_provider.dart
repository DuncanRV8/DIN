import 'package:flutter/material.dart';
import 'package:prac2_drv/shared/data/model_local_image.dart';

import '../entity_domain/logic.dart';
import '../shared/data/local_image_posts.dart';

class DiscoverProvider extends ChangeNotifier {
    List<ImagePost> _imagePosts = [];
    bool _isLoaded = false;

    List<ImagePost> get imagePost => _imagePosts;
    bool get isLoaded => _isLoaded;


    Future<void> loandingListImagePost() async {
        await Future.delayed(Duration(seconds: 3));

        _imagePosts = imagePosts.map((map) => ModelImageLocal.fromMap(map).toImagePost()).toList();
        _isLoaded = true;
        notifyListeners();
    }



}
