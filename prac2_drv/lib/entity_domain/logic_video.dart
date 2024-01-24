class VideoPost{
  final String subt;
  final String url;
  final int likes;
  final int views;

  VideoPost({ required this.subt, required this.url, this.likes = 0, this.views = 0});
}