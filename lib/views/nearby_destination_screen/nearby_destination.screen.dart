import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/nearby_destination_screen/getx/nearby_destination.controller.dart';
import 'package:get/get.dart';

class NearbyDestinationScreen extends BaseScreen<NearbyDestinationController> {
  const NearbyDestinationScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('NearbyDestinationPage')),
        body: const SafeArea(child: Text('NearbyDestinationController')));
  }
}
