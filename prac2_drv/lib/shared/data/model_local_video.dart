import '../../entity_domain/logic_video.dart';

class ModelVideoLocal {
  String name;
  String videoUrl;
  int likes;
  int views;

  ModelVideoLocal({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory ModelVideoLocal.fromMap(Map<String, dynamic> map) {
    return ModelVideoLocal(
        name: map['name'],
        videoUrl: map['videoUrl'],
        likes: map['likes'],
        views: map['views']
    );
  }

  VideoPost toVideoPost() {
    return VideoPost(
        subt: name ?? '',
        url: videoUrl ?? '',
        likes: likes ?? 0,
        views: views ?? 0
    );
  }
}