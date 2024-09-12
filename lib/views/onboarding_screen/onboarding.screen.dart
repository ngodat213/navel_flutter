import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/onboarding_screen/getx/onboarding.controller.dart';

class OnboardingScreen extends BaseView<OnboardingController> {
  OnboardingScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
        appBar: AppBar(title: const Text('OnboardingPage')),
        body: const SafeArea(child: Text('OnboardingController')));
  }
}
