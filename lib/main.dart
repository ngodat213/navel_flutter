import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/ui_spacer.dart';
import 'package:freal_flutter/widgets/custom_button.dart';
import 'package:freal_flutter/widgets/custom_select_button.dart';
import 'package:freal_flutter/widgets/custom_slider_card.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: const Color(0xff1C3132),
        body: SafeArea(
          child: SizedBox(
            child: const VStack(
              [CustomSliderCard()],
            ).marginSymmetric(horizontal: 10),
          ),
        ),
      ),
    );
  }
}
