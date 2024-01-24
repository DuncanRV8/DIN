import 'package:flutter/material.dart';
import '../entity_domain/logic_video.dart';
import '../shared/data/local_video_posts.dart';
import '../shared/data/model_local_video.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> _videoPosts = [];
  bool _isLoaded = false;
  int _position = 0;

  List<VideoPost> get videoPost => _videoPosts;
  bool get isLoaded => _isLoaded;
  int get position => _position;

  Future<void> loandingListVideoPost() async {
    //await Future.delayed(Duration(seconds: 3));
    _videoPosts = videoPosts.map((map) => ModelVideoLocal.fromMap(map).toVideoPost()).toList();
    _isLoaded = true;
    notifyListeners();
  }

  void updatePosition(int position) {
    _position = position;
    notifyListeners();
  }
}
