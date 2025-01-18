import 'package:flutter/material.dart';
import 'package:globotest/screens/creator.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const CreatorVideoPlayerScreen());
}

class CreatorVideoPlayerScreen extends StatelessWidget {
  const CreatorVideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          SamplePlayer(),
        ]),
      ),
    );
  }
}

class SamplePlayer extends StatefulWidget {
  const SamplePlayer({Key? key}) : super(key: key);

  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.asset("assets/germanvideo.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 637,
          child: FlickVideoPlayer(flickManager: flickManager),
        ),
        Container(
          width: 375,
          height: 812,
          child: Stack(
            children: [
              Positioned(
                left: 18,
                top: 46,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CreatorScreen()));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}