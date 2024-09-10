import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/onboarding_screen/getx/onboarding.controller.dart';
import 'package:get/get.dart';

class OnboardingScreen extends BaseScreen<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('OnboardingPage')),
        body: const SafeArea(child: Text('OnboardingController')));
  }
}
