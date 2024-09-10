import 'package:freal_flutter/views/nearby_destination_screen/getx/nearby_destination.controller.dart';
import 'package:get/get.dart';

class NearbyDestinationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NearbyDestinationController());
  }
}
