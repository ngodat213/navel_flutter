import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/select_payment_screen/getx/select_payment.controller.dart';

class SelectPaymentScreen extends BaseView<SelectPaymentController> {
  SelectPaymentScreen({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    throw Scaffold(
        appBar: AppBar(title: const Text('SelectPaymentPage')),
        body: const SafeArea(child: Text('SelectPaymentController')));
  }
}
