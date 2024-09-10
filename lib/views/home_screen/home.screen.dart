import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/home_screen/getx/home.controller.dart';
import 'package:get/get.dart';

class HomeScreen extends BaseScreen<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HomePage')),
        body: const SafeArea(child: Text('HomeController')));
  }
}
