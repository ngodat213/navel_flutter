import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/register_screen/getx/register.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends BaseView<RegisterController> {
  RegisterScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
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
                  decoration: BoxDecoration(gradient: AppColors.linearGradient),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Register"
                            .tr
                            .text
                            .xl4
                            .color(AppColors.colorWhite)
                            .bold
                            .make(),
                        UiSpacer.vSpace(),
                        const CustomTextField(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Full Name",
                        ),
                        UiSpacer.vSpace(),
                        const CustomTextField(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email ID",
                        ),
                        UiSpacer.vSpace(),
                        const CustomTextField(
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          hintText: "Password",
                        ),
                        UiSpacer.vSpace(),
                        CustomButton(
                          onTap: () {},
                          backgroundColor: AppColors.accentColor,
                          label: "Register"
                              .tr
                              .text
                              .color(AppColors.secondColor)
                              .bold
                              .makeCentered(),
                        ),
                        UiSpacer.vSpace(),
                        "Or Login With"
                            .tr
                            .text
                            .color(AppColors.accentColor)
                            .makeCentered(),
                        UiSpacer.vSpace(),
                        HStack(
                          [
                            CustomButton(
                              width: MediaQuery.of(context).size.width * 0.27,
                              height: MediaQuery.of(context).size.height * 0.06,
                              onTap: () {},
                              backgroundColor: AppColors.secondColor,
                              label: const Icon(
                                Icons.apple,
                                color: AppColors.accentColor,
                              ),
                            ),
                            UiSpacer.space(),
                            CustomButton(
                              width: MediaQuery.of(context).size.width * 0.27,
                              height: MediaQuery.of(context).size.height * 0.06,
                              onTap: () {},
                              backgroundColor: AppColors.secondColor,
                              label: const Icon(
                                Icons.facebook,
                                color: AppColors.accentColor,
                              ),
                            ),
                            UiSpacer.space(),
                            CustomButton(
                              width: MediaQuery.of(context).size.width * 0.27,
                              height: MediaQuery.of(context).size.height * 0.06,
                              onTap: () {},
                              backgroundColor: AppColors.secondColor,
                              label: const Icon(
                                Icons.facebook,
                                color: AppColors.accentColor,
                              ),
                            ),
                          ],
                        ),
                        UiSpacer.space(),
                        HStack([
                          "Already have an account? "
                              .tr
                              .text
                              .color(AppColors.colorWhite)
                              .make(),
                          GestureDetector(
                            child: "login"
                                .tr
                                .text
                                .color(AppColors.accentColor)
                                .bold
                                .make(),
                          )
                        ]).centered()
                      ],
                    ).paddingAll(AppValues.screen_margin),
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
