import 'package:freal_flutter/views/booking_detail_screen/Getx/booking_detail.controller.dart';
import 'package:get/get.dart';

class BookingDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BookingDetailController());
  }
}
