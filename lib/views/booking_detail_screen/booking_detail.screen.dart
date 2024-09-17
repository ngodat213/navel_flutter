import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/booking_detail_screen/Getx/booking_detail.controller.dart';

class BookingdetailPage extends BaseView<BookingDetailController> {
  BookingdetailPage({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
        appBar: AppBar(title: const Text('BookingdetailPage')),
        body: const SafeArea(child: Text('BookingdetailController')));
  }
}
