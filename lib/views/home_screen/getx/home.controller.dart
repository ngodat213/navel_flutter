import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:freal_flutter/models/button.tab_item.model.dart';
import 'package:freal_flutter/models/tab_item.model.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class HomeController extends BaseController {
  // Data
  final List<ButtomTabbarItem> bottomNavigationIcons =
      ButtomTabbarItem.tabItemsList;
  final List<TabbarItem> tabbarItems = TabbarItem.buttomTabbarItems;
  // Observer
  final RxInt selectedBottomNavigationBar = 0.obs; // Bottom tabbar
  final RxInt selectedTabBar = 0.obs; // Select tabbar

  /// Tabbar
  void onPressTabbar(int index) {
    if (selectedTabBar.value != index) {
      selectedTabBar.value = index;
    }
  }

  /// Buttom tab bar
  void onBottomTabbarRiveIconInit(Artboard artboard, index) {
    final controller = StateMachineController.fromArtboard(
        artboard, bottomNavigationIcons[index].stateMachine);
    artboard.addController(controller!);

    bottomNavigationIcons[index].status =
        controller.findInput<bool>("active") as SMIBool;
  }

  // OnTap
  void onTabPressButtonTabbar(int index) {
    if (selectedBottomNavigationBar.value != index && index >= 0 && index < 4) {
      selectedBottomNavigationBar.value = index;

      bottomNavigationIcons[index].status!.change(true);
      Future.delayed(const Duration(seconds: 1), () {
        bottomNavigationIcons[index].status!.change(false);
      });
    }
  }
}
