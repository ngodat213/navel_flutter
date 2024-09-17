import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/login_screen/getx/login.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends BaseView<LoginController> {
  LoginScreen({super.key});

  @override
  Widget body(BuildContext context) {
    // TODO: implement buildScreen
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
                      "login"
                          .tr
                          .text
                          .xl4
                          .color(AppColors.colorWhite)
                          .bold
                          .make(),
                      UiSpacer.vSpace(),
                      const CustomTextField(
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                        hintText: "nevel@gmail.com",
                      ),
                      UiSpacer.vSpace(),
                      CustomTextField(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        hintText: "*******",
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: "forgot".tr.text.make(),
                        ),
                      ),
                      UiSpacer.vSpace(),
                      HStack(
                        [
                          CustomButton(
                            width: MediaQuery.of(context).size.width * 0.7,
                            onTap: () {},
                            backgroundColor: AppColors.accentColor,
                            label: "login"
                                .tr
                                .text
                                .color(AppColors.accentColor)
                                .bold
                                .makeCentered(),
                          ),
                          UiSpacer.space(),
                          CustomButton(
                            onTap: () {},
                            width: MediaQuery.of(context).size.height * 0.06,
                            height: MediaQuery.of(context).size.height * 0.06,
                            backgroundColor: AppColors.secondColor,
                            boxBorder: Border.all(
                              width: AppValues.width_05,
                              color: AppColors.accentColor.withOpacity(0.5),
                            ),
                            label: const Icon(
                              Icons.center_focus_weak_outlined,
                              color: AppColors.accentColor,
                            ),
                          ),
                        ],
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
                        "New User? ".tr.text.color(AppColors.colorWhite).make(),
                        GestureDetector(
                          child: "Register Here"
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
    );
  }
}
