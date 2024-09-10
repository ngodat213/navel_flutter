import 'package:freal_flutter/views/group_booking_screen/getx/group_booking.controller.dart';
import 'package:get/get.dart';

class GroupBookingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(GroupBookingController());
  }
}
