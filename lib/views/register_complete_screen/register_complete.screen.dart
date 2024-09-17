import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/register_complete_screen/getx/register_complete.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class RegisterCompleteScreen extends BaseView<RegisterCompleteController> {
  RegisterCompleteScreen({super.key});

  @override
  Widget? floatingActionButton(context) {
    return CustomButton(
      width: MediaQuery.of(context).size.width,
      onTap: () {},
      backgroundColor: AppColors.accentColor,
      label: "explore_home"
          .tr
          .text
          .color(AppColors.primaryColor)
          .bold
          .makeCentered(),
    ).marginSymmetric(horizontal: AppValues.screen_margin);
  }

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
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
                decoration: BoxDecoration(gradient: AppColors.linearGradient85),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Register Complete!"
                          .tr
                          .text
                          .xl5
                          .fontFamily('Montserrat')
                          .lineHeight(0.89)
                          .color(AppColors.colorWhite)
                          .bold
                          .make(),
                      UiSpacer.vSpace(),
                      'You have successfully created your account'
                          .tr
                          .text
                          .sm
                          .fontWeight(FontWeight.w500)
                          .fontFamily('Montserrat')
                          .color(AppColors.colorWhite54)
                          .make()
                          .w56(context),
                      const ProfileWidget().paddingOnly(top: 50).centered()
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

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.transparent,
              ],
              radius: 0.6,
              stops: const [0.6, 1],
            ),
          ),
          child: const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/thumnail.png'),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Evelyn',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
      ],
    );
  }
}
