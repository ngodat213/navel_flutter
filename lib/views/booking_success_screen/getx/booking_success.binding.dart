import 'package:freal_flutter/views/booking_success_screen/Getx/booking_success.controller.dart';
import 'package:get/get.dart';

class BookingSuccessBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BookingSuccessController());
  }
}
