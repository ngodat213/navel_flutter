import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/video_screen/getx/video.controller.dart';

class VideoScreen extends BaseScreen<VideoController> {
  const VideoScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('VideoPage')),
        body: const SafeArea(child: Text('VideoController')));
  }
}
