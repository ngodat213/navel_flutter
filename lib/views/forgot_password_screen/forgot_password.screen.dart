import 'package:flutter/material.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/forgot_password_screen/getx/forgot_password.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgotPasswordScreen extends BaseScreen<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: VStack(
          [
            const CustomBackButton()
                .marginSymmetric(vertical: 15, horizontal: 25),
            VStack(
              [
                'forgot_password'.tr.text.xl3.make(),
                UiSpacer.vSpace(),
                'Please select your contact details and we will send a verfication code reset your password'
                    .tr
                    .text
                    .sm
                    .make(),
                UiSpacer.vSpace(),
                const CustomSelectButton(
                  backgroundColor: AppColors.secondColor,
                  label: 'Phone number',
                  subLabel: "**** **** 8357",
                  suffix: Icon(Icons.phone_android),
                ),
                UiSpacer.vSpace(),
                const CustomSelectButton(
                  backgroundColor: AppColors.secondColor,
                  label: 'Phone number',
                  subLabel: "**** **** 8357",
                  suffix: Icon(Icons.phone_android),
                )
              ],
            ).paddingSymmetric(
              horizontal: AppValues.screen_margin,
              vertical: AppValues.margin_60,
            ),
          ],
        ),
      ),
    );
  }
}
