import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/create_booking_screen/getx/create_booking.controller.dart';
import 'package:get/get.dart';

class CreateBookingScreen extends BaseScreen<CreateBookingController> {
  const CreateBookingScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('CreateBookingPage')),
        body: const SafeArea(child: Text('CreateBookingController')));
  }
}
