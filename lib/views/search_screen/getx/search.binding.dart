import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SearchController());
  }
}
