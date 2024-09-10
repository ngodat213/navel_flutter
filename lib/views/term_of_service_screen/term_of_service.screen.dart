import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/utils.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/term_of_service_screen/getx/term_of_service.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class TermOfServiceScreen extends BaseScreen<TermOfServiceController> {
  const TermOfServiceScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
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
      ).marginOnly(bottom: 30, left: 25, right: 25),
      body: SafeArea(
        child: VStack(
          [
            const CustomBackButton().marginSymmetric(vertical: 15),
            HStack(
              [
                CustomButton(
                  onTap: () {},
                  width: MediaQuery.of(context).size.height * 0.06,
                  height: MediaQuery.of(context).size.height * 0.06,
                  backgroundColor: const Color(0xff244442),
                  label: const Icon(
                    Icons.center_focus_weak_outlined,
                    color: Color(0xffD6A367),
                  ),
                ).paddingOnly(right: 8),
                VStack([
                  "Terms of service".text.make(),
                  "Last updated July 2019".text.make()
                ]),
              ],
            ).marginSymmetric(vertical: 25),
            UiSpacer.divider(height: 3, color: const Color(0xff253D3E))
                .marginSymmetric(vertical: 25),
            const CustomTermItem(
              title: "1. YOUR AGREEMENT",
              description:
                  "By using this Site, you agree to be bound try and to comply with, these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use this side.\n\nPLEASE NOTE Werve the right of car sole discretion, to change modify or otherwise alter these Terms and Conditions at any time Unless otherwise Indicated amendments will becoсе ебостіне immediately Please review these Terms and Conditions periodically Your continued use of the Site following the posting of changes and/or modifications wit constitute your acceptance of the revised. Terms and Conditions and the masonableness of these standards for notice of changes. For your information, this page was last upelated as of the date at the top of these terms and conditions",
            ),
            const CustomTermItem(
              title: "2. PRIVACY",
              description:
                  "By using this Site, you agree to be bound try and to comply with, these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use this side.\n\nPLEASE NOTE Werve the right of car sole discretion, to change modify or otherwise alter these Terms and Conditions at any time Unless otherwise Indicated amendments will becoсе ебостіне immediately Please review these Terms and Conditions periodically Your continued use of the Site following the posting of changes and/or modifications wit constitute your acceptance of the revised. Terms and Conditions and the masonableness of these standards for notice of changes. For your information, this page was last upelated as of the date at the top of these terms and conditions",
            ),
          ],
        )
            .scrollVertical()
            .marginOnly(left: 25, right: 25, bottom: 120)
            .w(MediaQuery.of(context).size.width)
            .h(MediaQuery.of(context).size.height),
      ),
    );
  }
}

class CustomTermItem extends StatelessWidget {
  final String title;
  final String description;
  const CustomTermItem({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        title.text.xl.make(),
        description.text.sm.make(),
      ],
    ).marginOnly(bottom: 25);
  }
}
