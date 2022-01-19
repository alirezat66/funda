import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:funda_assignment/data/models/estate_detail/video.dart';
import 'package:video_player/video_player.dart';
// we can add time line controller and timer to the buttom part of vide
// but in the time I decided to leave this page and works on other parts
class VideoPlayerPage extends HookWidget {
  
  final Video video;
  const VideoPlayerPage(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VideoPlayerController? _controller;
    final _playState = useState(false);
    final initializedState = useState(false);
    final _controllerState = useState(_controller);
    useEffect(() {
      _controller = VideoPlayerController.network(video.videos![0].url!)
        ..initialize().then((_) {
          _controller!.setLooping(true);
          initializedState.value = true;
        });
      _controllerState.value = _controller;
    }, const []);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: initializedState.value
            ? Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  AspectRatio(
                    aspectRatio: _controllerState.value!.value.aspectRatio,
                    child: VideoPlayer(_controllerState.value!),
                  ),
                  Container(
                    height: 35,
                    color: Colors.black.withOpacity(0.6),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              _playState.value
                                  ? _controllerState.value!.pause()
                                  : _controllerState.value!.play();
                              _playState.value = !_playState.value;
                            },
                            icon: Icon(
                              _playState.value ? Icons.pause : Icons.play_arrow,
                              color: Theme.of(context).colorScheme.primary,
                            )),
                      ],
                    ),
                  )
                ],
              )
            : Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(video.thumbnailUrl!),
                  const CircularProgressIndicator()
                ],
              ),
      ),
    );
  }
}
