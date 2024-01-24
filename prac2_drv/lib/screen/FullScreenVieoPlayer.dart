import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideoPlayer extends StatefulWidget {
  final String url;

  const FullScreenVideoPlayer({super.key, required this.url});

  @override
  State<FullScreenVideoPlayer> createState() => _FullScreenVideoPlayerState();

}

  class _FullScreenVideoPlayerState extends State<FullScreenVideoPlayer> {
    late VideoPlayerController _controller;

      @override
      void initState() {
        super.initState();
        _controller = VideoPlayerController.asset(widget.url)
          ..setLooping(true)
          ..setVolume(0.0)
          ..play()
          ..initialize().then((_) {
        setState(() {});
      });
      }

    @override
    Widget build(BuildContext context) {

      return (!_controller.value.isInitialized)
          ? const Center(child: CircularProgressIndicator(color: Colors.blue))
          : GestureDetector(
          onTap: (){
            (_controller.value.isPlaying)
              ? _controller.pause()
              :_controller.play();
          },
            child: VideoPlayer(_controller));
    }
    @override
    void dispose() {
      super.dispose();
      _controller.dispose();
    }
}
