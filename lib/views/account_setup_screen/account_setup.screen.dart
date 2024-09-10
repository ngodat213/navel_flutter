import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/utils.dart';
import 'package:freal_flutter/views/account_setup_screen/getx/account_setup.controller.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AccountSetupScreen extends BaseScreen<AccountSetupController> {
  const AccountSetupScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    // TODO: implement buildScreen
    return SafeArea(
      child: VStack(
        [
          const CustomBackButton()
              .marginSymmetric(vertical: 15, horizontal: 25),
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
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(width: 2, color: const Color(0xff2B4544)),
                    ),
                    child: const Icon(Icons.person),
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
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff2B4544),
                        ),
                        child: Icon(
                          Icons.file_upload_outlined,
                          weight: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                    ),
                  )
                ],
              ).centered(),
              const CustomTextField(
                prefixIcon: Icon(Icons.person),
                hintText: "Username",
              ),
            ],
          ).paddingSymmetric(horizontal: 25, vertical: 60),
        ],
      )
          .w(MediaQuery.of(context).size.width)
          .h(MediaQuery.of(context).size.height),
    );
  }
}
