import 'package:freal_flutter/views/reset_password_screen/getx/reset_password.controller.dart';
import 'package:get/get.dart';

class ResetPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ResetPasswordController());
  }
}
