import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';

class mPlayer extends StatefulWidget {
  const mPlayer({super.key});

  @override
  State<mPlayer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<mPlayer> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    _videoPlayerController!.initialize().then((_) {
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController!,
        autoPlay: true,
        looping: true,
      );
      setState(() {
        print('Video player good to go');
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController!.dispose();
    _chewieController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
        child: _cVideoPlayer()
        );
  }

  Widget _cVideoPlayer() {
    return _chewieController != null && _videoPlayerController != null
        ? Chewie(controller: _chewieController!)
        : const Text('Loading');
  }
}
 /*ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.green,
              child: const Text('ClipRRect', style: style),
            ),
          ),
*/