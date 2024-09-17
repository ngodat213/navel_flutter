import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/verification_code_screen/getx/verification_code.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:velocity_x/velocity_x.dart';

class VerificationCodeScreen extends BaseView<VerificationController> {
  VerificationCodeScreen({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      bottomSheet: CustomButton(
        onTap: () {},
        backgroundColor: AppColors.accentColor,
        label: "Verification"
            .tr
            .text
            .color(AppColors.secondColor)
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
                'Verification Code'.tr.text.xl3.make(),
                UiSpacer.vSpace(),
                'Please select your contact details and we will send a verfication code reset your password'
                    .tr
                    .text
                    .sm
                    .make(),
                UiSpacer.vSpace(),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: MediaQuery.of(context).size.width * 0.2,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                ),
                UiSpacer.vSpace(),
                HStack(
                  [
                    'Didn\'t receive the code?'.tr.text.make(),
                    'Resend code'.tr.text.make()
                  ],
                ).centered(),
                // UiSpacer.space(),
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
