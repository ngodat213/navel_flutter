import 'package:flutter/material.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/reset_password_screen/getx/reset_password.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ResetPasswordScreen extends BaseScreen<ResetPasswordController> {
  const ResetPasswordScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      bottomSheet: CustomButton(
        onTap: () {},
        backgroundColor: AppColors.accentColor,
        label: "Update Password"
            .tr
            .text
            .color(AppColors.secondColor)
            .bold
            .makeCentered(),
      ).marginSymmetric(
        vertical: AppValues.margin_30,
        horizontal: AppValues.screen_margin,
      ),
      body: SafeArea(
        child: VStack(
          [
            const CustomBackButton().marginSymmetric(
              vertical: AppValues.margin_15,
              horizontal: AppValues.screen_margin,
            ),
            VStack(
              [
                'Reset Password'.tr.text.xl3.make(),
                UiSpacer.vSpace(),
                'At least 8 characters, with uppercase, lowercase and special character.'
                    .tr
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
