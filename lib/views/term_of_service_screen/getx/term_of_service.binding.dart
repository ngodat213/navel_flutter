import 'package:freal_flutter/views/term_of_service_screen/getx/term_of_service.controller.dart';
import 'package:get/get.dart';

class TermOfServiceBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TermOfServiceController());
  }
}
