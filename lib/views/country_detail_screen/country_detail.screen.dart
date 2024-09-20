import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/views/country_detail_screen/getx/country_detail.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class CountryDetailScreen extends BaseView<CountryDetailController> {
  CountryDetailScreen({super.key});

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
              Positioned.fill(
                top: -Get.height * 0.1,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: Get.width * 0.15,
                    height: Get.width * 0.15,
                    padding: const EdgeInsets.all(AppValues.margin_15),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppValues.radius_circle),
                      border:
                          Border.all(width: 2, color: AppColors.accentColor),
                      color: AppColors.primaryColor.withOpacity(0.6),
                    ),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: AppColors.colorWhite,
                    ),
                  ),
                ),
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
                    "Top Recommended Country"
                        .tr
                        .text
                        .color(AppColors.colorWhite70)
                        .makeCentered()
                        .marginSymmetric(horizontal: AppValues.screen_margin),
                    "Everest"
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
                    "Indonesia, officially the Republic of Indonesia is a country in Southeast Asia and Oceania between the Indian and Pacific oceans It consists of over seventeen thousand islands. Indonesia is the world's largest island country and the 14th-largest country by land area, at 1.904.569 square kilometres (735.358 square miles)"
                        .tr
                        .text
                        .color(AppColors.colorWhite70)
                        .wordSpacing(0)
                        .lineHeight(0)
                        .xs
                        .light
                        .center
                        .makeCentered()
                        .paddingSymmetric(vertical: AppValues.margin_30)
                        .marginSymmetric(horizontal: AppValues.screen_margin),
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                          tabs: controller.myTabs,
                          controller: controller.tabController,
                          isScrollable: true,
                          labelPadding:
                              const EdgeInsets.only(right: AppValues.margin_30),
                          labelColor: AppColors.accentColor,
                          unselectedLabelColor: AppColors.colorWhite54,
                          dividerColor: Colors.transparent,
                          indicatorColor: AppColors.accentColor,
                          indicator: const UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: AppColors
                                  .accentColor, // Color of the underline
                            ),
                            insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller.tabController,
                        children: [
                          ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (_, builder) {
                              return const CustomSliderCard()
                                  .marginOnly(right: AppValues.margin_15);
                            },
                          ),
                          ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, builder) {
                              return const CustomSliderCard()
                                  .marginOnly(right: AppValues.margin_15);
                            },
                          ),
                        ],
                      ).marginOnly(left: AppValues.screen_margin),
                    ).marginOnly(top: AppValues.margin_15)
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
