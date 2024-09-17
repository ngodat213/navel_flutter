import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'Getx/booking_success.controller.dart';

class BookingSuccessScreen extends BaseView<BookingSuccessController> {
  BookingSuccessScreen({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
        appBar: AppBar(title: const Text('BookingSuccessPage')),
        body: const SafeArea(child: Text('BookingSuccessController')));
  }
}
