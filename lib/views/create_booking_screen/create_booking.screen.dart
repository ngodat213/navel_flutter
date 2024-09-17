import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/create_booking_screen/getx/create_booking.controller.dart';

class CreateBookingScreen extends BaseView<CreateBookingController> {
  CreateBookingScreen({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
        appBar: AppBar(title: const Text('CreateBookingPage')),
        body: const SafeArea(child: Text('CreateBookingController')));
  }
}
