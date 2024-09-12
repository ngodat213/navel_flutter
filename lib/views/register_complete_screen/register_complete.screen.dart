import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/register_complete_screen/getx/register_complete.controller.dart';

class RegisterCompleteScreen extends BaseView<RegisterCompleteController> {
  RegisterCompleteScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
        appBar: AppBar(title: const Text('RegisterCompletePage')),
        body: const SafeArea(child: Text('RegisterCompleteController')));
  }
}
