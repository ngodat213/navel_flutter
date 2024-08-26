import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/ui_spacer.dart';
import 'package:freal_flutter/widgets/custom_back_button.dart';
import 'package:freal_flutter/widgets/custom_button.dart';
import 'package:freal_flutter/widgets/custom_text_field.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D3132),
      bottomSheet: CustomButton(
        onTap: () {},
        backgroundColor: const Color(0xffD6A367),
        label: "Update Password"
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
            VStack(
              [
                'Reset Password'.text.xl3.make(),
                UiSpacer.vSpace(),
                'At least 8 characters, with uppercase, lowercase and special character.'
                    .text
                    .sm
                    .make(),
                UiSpacer.vSpace(),
                const CustomTextField(
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  hintText: "New Password",
                ),
                UiSpacer.vSpace(),
                const CustomTextField(
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  hintText: "Confirm Password",
                ),
              ],
            ).paddingSymmetric(horizontal: 25, vertical: 60),
          ],
        )
            .w(MediaQuery.of(context).size.width)
            .h(MediaQuery.of(context).size.height),
      ),
    );
  }
}
