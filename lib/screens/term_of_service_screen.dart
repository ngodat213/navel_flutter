import 'package:flutter/material.dart';
import 'package:freal_flutter/widgets/custom_back_button.dart';
import 'package:freal_flutter/widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class TermOfServiceScreen extends StatelessWidget {
  const TermOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D3132),
      bottomSheet: CustomButton(
        onTap: () {},
        backgroundColor: const Color(0xffD6A367),
        label: "Verification"
            .text
            .color(const Color(0xff244442))
            .bold
            .makeCentered(),
      ).marginSymmetric(vertical: 30, horizontal: 25),
      body: SafeArea(
        child: VStack(
          [
            const CustomBackButton()
                .marginSymmetric(vertical: 15, horizontal: 25),
            const VStack(
              [],
            ).paddingSymmetric(horizontal: 25, vertical: 60),
          ],
        )
            .w(MediaQuery.of(context).size.width)
            .h(MediaQuery.of(context).size.height),
      ),
    );
  }
}
