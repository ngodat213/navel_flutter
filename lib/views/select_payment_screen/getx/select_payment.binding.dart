import 'package:freal_flutter/views/select_payment_screen/getx/select_payment.controller.dart';
import 'package:get/get.dart';

class SelectPaymentBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SelectPaymentController());
  }
}
