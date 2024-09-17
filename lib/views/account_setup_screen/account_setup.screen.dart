import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/account_setup_screen/getx/account_setup.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AccountSetupScreen extends BaseView<AccountSetupController> {
  AccountSetupScreen({super.key});

  @override
  Widget? floatingActionButton(context) {
    return CustomButton(
      width: MediaQuery.of(context).size.width,
      onTap: () {},
      backgroundColor: AppColors.accentColor,
      label: "login".tr.text.color(AppColors.primaryColor).bold.makeCentered(),
    ).marginSymmetric(horizontal: AppValues.screen_margin);
  }

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return SafeArea(
      child: VStack(
        [
          const CustomBackButton().marginSymmetric(
            vertical: AppValues.margin_15,
            horizontal: AppValues.screen_margin,
          ),
          VStack(
            [
              'account_setup'.tr.text.xl3.make(),
              UiSpacer.vSpace(),
              'finish_your_account_setup_by_uploading_profile_picture_and_set_your_username'
                  .tr
                  .text
                  .sm
                  .make(),
              UiSpacer.vSpace(),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppValues.radius_circle,
                      ),
                      border: Border.all(
                        width: AppValues.width_2,
                        color: AppColors.borderColor,
                      ),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: AppValues.icon_40,
                      color: AppColors.secondColor,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.08,
                        width: MediaQuery.of(context).size.width * 0.08,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppValues.radius_8),
                          color: AppColors.borderColor,
                        ),
                        child: Icon(
                          Icons.file_upload_outlined,
                          weight: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                    ),
                  )
                ],
              ).marginSymmetric(vertical: 25).centered(),
              const CustomTextField(
                prefixIcon: Icon(Icons.person, color: AppColors.accentColor),
                hintText: "Username",
                hintTextStyle: TextStyle(color: AppColors.hintTextColor),
              )
            ],
          ).paddingSymmetric(
            horizontal: AppValues.screen_margin,
            vertical: AppValues.margin_60,
          ),
        ],
      )
          .w(MediaQuery.of(context).size.width)
          .h(MediaQuery.of(context).size.height),
    );
  }
}
