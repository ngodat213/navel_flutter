import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/verification_you_identity_screen/getx/verification_you_identity.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:velocity_x/velocity_x.dart';

class VerificationYouIdentityScreen
    extends BaseView<VerificationYouIdentityController> {
  VerificationYouIdentityScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/thumnail.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(gradient: AppColors.linearGradient50),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Verify Your Identity"
                          .tr
                          .text
                          .xl4
                          .color(AppColors.colorWhite)
                          .bold
                          .make(),
                      UiSpacer.vSpace(),
                      'We have just send a verification code to hydra.coder@gmail.com'
                          .tr
                          .text
                          .sm
                          .make(),
                      OTPTextField(
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: MediaQuery.of(context).size.width * 0.2,
                        style: const TextStyle(fontSize: 17),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                      ),
                      UiSpacer.vSpace(),
                      HStack([
                        'Didn\'t receive the code? '
                            .tr
                            .text
                            .color(AppColors.colorWhite)
                            .make(),
                        GestureDetector(
                          child: 'Resend code'
                              .tr
                              .text
                              .color(AppColors.accentColor)
                              .bold
                              .make(),
                        )
                      ]).centered(),
                      UiSpacer.space(),
                      CustomButton(
                        onTap: () {},
                        backgroundColor: AppColors.accentColor,
                        label: "Verification"
                            .tr
                            .text
                            .color(AppColors.secondColor)
                            .bold
                            .makeCentered(),
                      ),
                      UiSpacer.vSpace(),
                      "By registering you agree to our"
                          .tr
                          .text
                          .color(AppColors.colorWhite)
                          .makeCentered(),
                      GestureDetector(
                        child: "Terms of Service"
                            .tr
                            .text
                            .color(AppColors.accentColor)
                            .bold
                            .makeCentered(),
                      )
                    ],
                  ).paddingAll(AppValues.screen_margin),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
