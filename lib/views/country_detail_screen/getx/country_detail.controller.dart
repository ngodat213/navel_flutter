import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:get/get.dart';

class CountryDetailController extends BaseController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Cities'),
    const Tab(text: 'Destination'),
  ];

  /// Tab controller
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
