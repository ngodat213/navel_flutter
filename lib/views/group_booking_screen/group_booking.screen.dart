import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/group_booking_screen/getx/group_booking.controller.dart';
import 'package:get/get.dart';

class GroupBookingScreen extends BaseScreen<GroupBookingController> {
  const GroupBookingScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('GroupBookingPage')),
        body: const SafeArea(child: Text('GroupBookingController')));
  }
}
