import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/utils.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/verification_you_identity_screen/getx/verification_you_identity.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:velocity_x/velocity_x.dart';

class VerificationYouIdentityScreen
    extends BaseScreen<VerificationYouIdentityController> {
  const VerificationYouIdentityScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D3132),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/thumnail.png'),
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
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff1D3133).withOpacity(0.1),
                        const Color(0xff1D3133).withOpacity(0.05),
                        const Color(0xff1D3133).withOpacity(0.1),
                        const Color(0xff1D3133),
                        const Color(0xff1D3133),
                        const Color(0xff1D3133),
                        const Color(0xff1D3133),
                      ],
                    ),
                  ),
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
                            .text
                            .xl4
                            .color(Colors.white)
                            .bold
                            .make(),
                        UiSpacer.vSpace(),
                        'We have just send a verification code to hydra.coder@gmail.com'
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
                              .text
                              .color(Colors.white)
                              .make(),
                          GestureDetector(
                            child: 'Resend code'
                                .text
                                .color(const Color(0xffD6A367))
                                .bold
                                .make(),
                          )
                        ]).centered(),
                        UiSpacer.space(),
                        CustomButton(
                          onTap: () {},
                          backgroundColor: const Color(0xffD6A367),
                          label: "Verification"
                              .text
                              .color(const Color(0xff244442))
                              .bold
                              .makeCentered(),
                        ),
                        UiSpacer.vSpace(),
                        "By registering you agree to our "
                            .text
                            .color(Colors.white)
                            .makeCentered(),
                        GestureDetector(
                          child: "Terms of Service"
                              .text
                              .color(const Color(0xffD6A367))
                              .bold
                              .makeCentered(),
                        )
                      ],
                    ).paddingAll(25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
