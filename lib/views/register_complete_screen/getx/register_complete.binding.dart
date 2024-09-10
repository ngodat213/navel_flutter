import 'package:freal_flutter/views/register_complete_screen/getx/register_complete.controller.dart';
import 'package:get/get.dart';

class RegisterCompleteBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RegisterCompleteController());
  }
}
