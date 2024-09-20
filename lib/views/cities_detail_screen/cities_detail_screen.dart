import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/views/cities_detail_screen/getx/cities_detail.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class CitiesDetailScreen extends BaseView<CitiesDetailController> {
  CitiesDetailScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return SizedBox(
      height: Get.height + 250,
      width: Get.width,
      child: Stack(
        children: [
          // Background Image with overlay
          Stack(
            children: [
              ContainerImage(
                imageUrl:
                    'https://i.pinimg.com/originals/56/7a/dc/567adc99bf754e9cf82107e77d463d52.jpg',
                fit: BoxFit.cover,
                height: Get.height * 0.5,
                width: Get.width,
              ),
            ],
          ),
          // Content
          Stack(
            children: [
              Container(
                height: Get.height + 250,
                width: Get.width,
                decoration: BoxDecoration(gradient: AppColors.linearGradient70),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                child: VStack(
                  [
                    "Top Recommended City"
                        .tr
                        .text
                        .color(AppColors.colorWhite70)
                        .makeCentered()
                        .marginSymmetric(horizontal: AppValues.screen_margin),
                    "Bali"
                        .tr
                        .text
                        .color(AppColors.textColor)
                        .fontFamily('Jagerlay')
                        .xl5
                        .makeCentered()
                      ..marginSymmetric(horizontal: AppValues.screen_margin),
                    HStack(
                      [
                        const Icon(
                          Icons.flag,
                          color: Colors.white,
                        ),
                        " Everest".tr.text.color(AppColors.colorWhite70).make(),
                        Container(
                          height: 20,
                          width: 1,
                          color: AppColors.colorWhite,
                        ).paddingSymmetric(horizontal: AppValues.margin_15),
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        "100+".tr.text.color(AppColors.textColor).make(),
                        " Destination"
                            .tr
                            .text
                            .color(AppColors.colorWhite70)
                            .make()
                      ],
                    )
                        .centered()
                        .marginSymmetric(horizontal: AppValues.screen_margin),
                    "Exlore bearty destiniton in Bali"
                        .tr
                        .text
                        .color(AppColors.colorWhite70)
                        .wordSpacing(0)
                        .lineHeight(0)
                        .xs
                        .light
                        .center
                        .makeCentered()
                        .w(Get.width * 0.2)
                        .centered()
                        .paddingOnly(top: AppValues.margin_30)
                        .marginSymmetric(horizontal: AppValues.screen_margin),
                    const Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    )
                        .marginSymmetric(
                          vertical: AppValues.margin_15,
                        )
                        .centered(),
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (_, builder) {
                          return const CustomSliderCard()
                              .marginOnly(right: AppValues.margin_15);
                        },
                      ),
                    ).paddingOnly(left: AppValues.screen_margin),
                  ],
                ).wh(Get.width, Get.height),
              ),
            ],
          ),

          const HStack([
            CustomBackButton(),
            Spacer(),
            CustomLocation(),
          ]).paddingAll(AppValues.margin_15)
        ],
      ),
    );
  }
}
