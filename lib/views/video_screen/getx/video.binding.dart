import 'package:freal_flutter/views/video_screen/getx/video.controller.dart';
import 'package:get/get.dart';

class VideoBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(VideoController());
  }
}
