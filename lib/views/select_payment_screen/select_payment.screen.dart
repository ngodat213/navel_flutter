import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/select_payment_screen/getx/select_payment.controller.dart';

class SelectPaymentScreen extends BaseScreen<SelectPaymentController> {
  const SelectPaymentScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('SelectPaymentPage')),
        body: const SafeArea(child: Text('SelectPaymentController')));
  }
}
