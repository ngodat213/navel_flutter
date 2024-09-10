import 'package:freal_flutter/views/user_profile_screen/getx/user_profile.controller.dart';
import 'package:get/get.dart';

class UserProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserProfileController());
  }
}
