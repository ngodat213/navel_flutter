import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/booking_detail_screen/Getx/booking_detail.controller.dart';
import 'package:get/get.dart';

class BookingdetailPage extends BaseScreen<BookingDetailController> {
  const BookingdetailPage({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('BookingdetailPage')),
        body: const SafeArea(child: Text('BookingdetailController')));
  }
}
