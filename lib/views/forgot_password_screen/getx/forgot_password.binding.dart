import 'package:freal_flutter/views/forgot_password_screen/getx/forgot_password.controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ForgotPasswordController());
  }
}
