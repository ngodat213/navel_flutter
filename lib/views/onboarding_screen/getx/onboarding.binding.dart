import 'package:freal_flutter/views/onboarding_screen/getx/onboarding.controller.dart';
import 'package:get/get.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OnboardingController());
  }
}
