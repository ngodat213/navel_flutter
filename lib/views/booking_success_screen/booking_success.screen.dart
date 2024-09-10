import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/booking_success_screen/Getx/booking_success.controller.dart';
import 'package:get/get.dart';

class BookingSuccessScreen extends BaseScreen<BookingSuccessController> {
  const BookingSuccessScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('BookingSuccessPage')),
        body: const SafeArea(child: Text('BookingSuccessController')));
  }
}
