import 'package:freal_flutter/views/cities_detail_screen/getx/cities_detail.controller.dart';
import 'package:get/get.dart';

class CitiesDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CitiesDetailController());
  }
}
