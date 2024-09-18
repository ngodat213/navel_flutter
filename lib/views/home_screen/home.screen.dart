import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/core/utils/utils.dart';
import 'package:freal_flutter/models/button.tab_item.model.dart';
import 'package:freal_flutter/models/tab_item.model.dart';
import 'package:freal_flutter/views/home_screen/getx/home.controller.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart' hide LinearGradient;

class HomeScreen extends BaseView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget? bottomNavigationBar() {
    return Container(
      height: Get.height * 0.065,
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 10),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppValues.radius_24),
        gradient: LinearGradient(colors: [
          Colors.white.withOpacity(0.5),
          Colors.white.withOpacity(0),
        ]),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondColor,
          borderRadius: BorderRadius.circular(AppValues.radius_24),
          boxShadow: [
            BoxShadow(
              color: AppColors.secondColor.withOpacity(0.3),
              blurRadius: 20,
              offset: const Offset(0, 20),
            )
          ],
        ),
        child: Obx(() {
          final List<ButtomTabbarItem> icons = controller.bottomNavigationIcons;
          final selectedTab = controller.selectedBottomNavigationBar;
          return Row(
            children: List.generate(icons.length, (index) {
              ButtomTabbarItem icon = icons[index];

              return Expanded(
                key: icon.id,
                child: CupertinoButton(
                  padding: const EdgeInsets.all(12),
                  child: AnimatedOpacity(
                    opacity: selectedTab == index ? 1 : 0.5,
                    duration: const Duration(milliseconds: 200),
                    child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: -4,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 4,
                              width: selectedTab == index ? 20 : 0,
                              decoration: BoxDecoration(
                                color: AppColors.accentColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 36,
                            width: 36,
                            child: RiveAnimation.asset(
                              AppImages.iconHomeRiv,
                              stateMachines: [icon.stateMachine],
                              artboard: icon.artboard,
                              onInit: (artboard) {
                                controller.onBottomTabbarRiveIconInit(
                                    artboard, index);
                              },
                            ),
                          )
                        ]),
                  ),
                  onPressed: () {
                    controller.onTabPressButtonTabbar(index);
                  },
                ),
              );
            }),
          );
        }),
      ),
    );
  }

  @override
  Widget body(BuildContext context) {
    return VStack(
      [
        /// Info
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

        /// Search
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
            /// Slider
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

            /// Tabbar
            Obx(() {
              // Data tab items
              List<TabbarItem> tabItems = controller.tabbarItems;
              return Container(
                child: Column(
                  children: List.generate(tabItems.length, (index) {
                    TabbarItem item = tabItems[index];
                    return CustomTabBar(
                      onPress: () => controller.onPressTabbar(index),
                      text: item.text,
                      isSelect: index == controller.selectedTabBar.value,
                    ).marginOnly(bottom: AppValues.margin_30);
                  }).toList(),
                )
                    .centered()
                    .h(Get.height * 0.7)
                    .w(Get.width * 0.05)
                    .paddingSymmetric(
                      horizontal: AppValues.screen_margin,
                      vertical: AppValues.screen_margin,
                    )
                    .color(AppColors.primaryColor),
              );
            })
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
  final VoidCallback onPress;
  const CustomTabBar({
    super.key,
    required this.text,
    this.isSelect = false,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: text.tr.text
                .fontWeight(FontWeight.w700)
                .fontFamily('Montserrat')
                .color(
                    isSelect! ? AppColors.accentColor : AppColors.textUnSelect)
                .make(),
          ),
          Visibility(
            visible: isSelect!,
            child: RotatedBox(
                quarterTurns: 3,
                child: UiSpacer.divider(color: AppColors.accentColor).w(15)),
          ),
        ],
      ),
    );
  }
}
