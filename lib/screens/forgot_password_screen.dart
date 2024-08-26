import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/ui_spacer.dart';
import 'package:freal_flutter/widgets/custom_back_button.dart';
import 'package:freal_flutter/widgets/custom_select_button.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D3132),
      body: SafeArea(
        child: VStack(
          [
            const CustomBackButton()
                .marginSymmetric(vertical: 15, horizontal: 25),
            VStack(
              [
                'Forgot Password'.text.xl3.make(),
                UiSpacer.vSpace(),
                'Please select your contact details and we will send a verfication code reset your password'
                    .text
                    .sm
                    .make(),
                UiSpacer.vSpace(),
                const CustomSelectButton(
                  backgroundColor: Color(0xff244442),
                  label: 'Phone number',
                  subLabel: "**** **** 8357",
                  suffix: Icon(Icons.phone_android),
                ),
                UiSpacer.vSpace(),
                const CustomSelectButton(
                  backgroundColor: Color(0xff244442),
                  label: 'Phone number',
                  subLabel: "**** **** 8357",
                  suffix: Icon(Icons.phone_android),
                )
              ],
            ).paddingSymmetric(horizontal: 25, vertical: 60),
          ],
        ),
      ),
    );
  }
}
