import 'package:freal_flutter/views/create_booking_screen/getx/create_booking.controller.dart';
import 'package:get/get.dart';

class CreateBookingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CreateBookingController());
  }
}
