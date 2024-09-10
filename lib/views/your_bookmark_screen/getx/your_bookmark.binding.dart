import 'package:freal_flutter/views/your_bookmark_screen/getx/your_bookmark.controller.dart';
import 'package:get/get.dart';

class YourBookmarkBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(YourBookmarkController());
  }
}
