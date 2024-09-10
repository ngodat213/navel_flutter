import 'package:freal_flutter/views/country_detail_screen/getx/country_detail.controller.dart';
import 'package:get/get.dart';

class CountryDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountryDetailController());
  }
}
