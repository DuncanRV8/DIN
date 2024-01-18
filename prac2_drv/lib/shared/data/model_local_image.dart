import '../../entity_domain/logic.dart';

class ModelImageLocal {
  String name;
  String imgUrl;
  int likes;
  int views;

  ModelImageLocal({
    required this.name,
    required this.imgUrl,
    required this.likes,
    required this.views,
});

  factory ModelImageLocal.fromMap(Map<String, dynamic> map) {
    return ModelImageLocal(
      name: map['name'],
      imgUrl: map['imgUrl'],
      likes: map['likes'],
      views: map['views']
    );
  }

  ImagePost toImagePost() {
    return ImagePost(
        subt: name ?? 'Subtitulo alternativo',
        url: imgUrl ?? 'URL alternativo',
        likes: likes ?? 0,
        views: views ?? 0
    );
  }
}