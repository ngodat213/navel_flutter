import 'package:freal_flutter/views/verification_you_identity_screen/getx/verification_you_identity.controller.dart';
import 'package:get/get.dart';

class VerificationYouIdentityBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(VerificationYouIdentityController());
  }
}
