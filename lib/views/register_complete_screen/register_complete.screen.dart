import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/register_complete_screen/getx/register_complete.controller.dart';
import 'package:get/get.dart';

class RegisterCompleteScreen extends BaseScreen<RegisterCompleteController> {
  const RegisterCompleteScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('RegisterCompletePage')),
        body: const SafeArea(child: Text('RegisterCompleteController')));
  }
}
