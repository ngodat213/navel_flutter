import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/home_screen/getx/home.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class HomeScreen extends BaseView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return VStack(
      [
        HStack(
          [
            HStack(
              [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppValues.radius_8),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/thumnail.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                VStack(
                  [
                    'welcome'.text.make(),
                    'Hydra Coder'.text.make(),
                  ],
                ).paddingOnly(left: 8)
              ],
            ),
            const Spacer(),
            GestureDetector(
              child: const Icon(Icons.ac_unit),
            ),
          ],
        ).paddingSymmetric(
          horizontal: AppValues.screen_margin,
          vertical: AppValues.margin_15,
        ),
        HStack(
          [
            'Recommendation'
                .tr
                .text
                .xl
                .bold
                .fontFamily('Montserrat')
                .color(AppColors.accentColor)
                .make()
                .w56(context),
            const Spacer(),
            const Icon(Icons.search, color: AppColors.accentColor),
          ],
        ).paddingSymmetric(
          vertical: AppValues.margin_5,
          horizontal: AppValues.screen_margin,
        ),
        UiSpacer.divider(color: AppColors.secondColor, height: 5)
            .paddingOnly(left: 25),
        Stack(
          children: [
            CarouselSlider(
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return const CustomSliderCard();
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.7,
                aspectRatio: 2,
              ),
            ).marginOnly(left: Get.width * 0.06),
            Container(
              child: const Column(
                children: [
                  CustomTabBar(text: "Destination", isSelect: true),
                  SizedBox(height: 30),
                  CustomTabBar(text: "Contries"),
                  SizedBox(height: 30),
                  CustomTabBar(text: "Cities"),
                ],
              )
                  .centered()
                  .h(Get.height * 0.7)
                  .w(Get.width * 0.05)
                  .paddingSymmetric(
                    horizontal: AppValues.screen_margin,
                    vertical: AppValues.screen_margin,
                  )
                  .color(AppColors.primaryColor),
            )
          ],
        ).paddingSymmetric(
          vertical: AppValues.margin_15,
        ),
      ],
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final String text;
  final bool? isSelect;
  const CustomTabBar({
    super.key,
    required this.text,
    this.isSelect = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: text.tr.text
              .fontWeight(FontWeight.w700)
              .fontFamily('Montserrat')
              .color(isSelect! ? AppColors.accentColor : AppColors.textUnSelect)
              .make(),
        ),
        Visibility(
          visible: isSelect!,
          child: RotatedBox(
              quarterTurns: 3,
              child: UiSpacer.divider(color: AppColors.accentColor).w(15)),
        ),
      ],
    );
  }
}
