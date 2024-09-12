import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/group_booking_screen/getx/group_booking.controller.dart';

class GroupBookingScreen extends BaseView<GroupBookingController> {
  GroupBookingScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
        appBar: AppBar(title: const Text('GroupBookingPage')),
        body: const SafeArea(child: Text('GroupBookingController')));
  }
}
