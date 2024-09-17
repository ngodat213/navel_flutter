import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/nearby_destination_screen/getx/nearby_destination.controller.dart';

class NearbyDestinationScreen extends BaseView<NearbyDestinationController> {
  NearbyDestinationScreen({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
        appBar: AppBar(title: const Text('NearbyDestinationPage')),
        body: const SafeArea(child: Text('NearbyDestinationController')));
  }
}
