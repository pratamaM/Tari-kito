import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Animasi extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _Animasi();
  }
}


  @override
  State<StatefulWidget> createState() {
    return _Animasi();
  }


class _Animasi extends State<Animasi> {
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.asset(
        'assets/videos/Vfix.m4v');
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController1,
        fullScreenByDefault: true,
        autoPlay: true,
        looping: false,
      autoInitialize: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tari Persembahan Bengkulu',
      theme: ThemeData.light().copyWith(
        platform: TargetPlatform.iOS ?? Theme.of(context).platform,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tari Persembahan Bengkulu'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Chewie(
                  controller: _chewieController,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

