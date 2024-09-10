import 'package:freal_flutter/views/verification_code_screen/getx/verification_code.controller.dart';
import 'package:get/get.dart';

class VerificationCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(VerificationController());
  }
}
