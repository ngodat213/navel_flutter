import 'package:flutter/foundation.dart';
import 'package:rive/rive.dart';

class ButtomTabbarItem {
  ButtomTabbarItem({
    this.stateMachine = "",
    this.artboard = "",
    this.status,
  });

  UniqueKey? id = UniqueKey();
  String stateMachine;
  String artboard;
  late SMIBool? status;

  static List<ButtomTabbarItem> tabItemsList = [
    ButtomTabbarItem(stateMachine: "HOME_Interactivity", artboard: "HOME"),
    ButtomTabbarItem(stateMachine: "SEARCH_Interactivity", artboard: "SEARCH"),
    ButtomTabbarItem(stateMachine: "STAR_Interactivity", artboard: "STAR"),
    ButtomTabbarItem(stateMachine: "USER_Interactivity", artboard: "USER"),
  ];
}
