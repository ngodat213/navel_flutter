import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/video_screen/getx/video.controller.dart';

class VideoScreen extends BaseView<VideoController> {
  VideoScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('VideoPage')),
        body: const SafeArea(child: Text('VideoController')));
  }
}
