import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UiSpacer {
  static Widget hSpace([double space = 20]) => SizedBox(width: space);
  static Widget vSpace([double space = 20]) => SizedBox(height: space);

  //space between widgets vertically
  static Widget verticalSpace({double space = 20}) => SizedBox(height: space);

  //space between widgets horizontally
  static Widget horizontalSpace({double space = 20}) => SizedBox(width: space);
  static Widget smHorizontalSpace({double space = 5}) => SizedBox(width: space);

  static Widget formVerticalSpace({double space = 15}) => SizedBox(height: space);

  static Widget emptySpace() => SizedBox.shrink();
  static Widget expandedSpace() => Expanded(
        child: SizedBox.shrink(),
      );

  static Widget divider({double height = 1, double thickness = 1}) => Divider(
        height: height,
        thickness: thickness,
      );

  static Widget slideIndicator() => divider(height: 4, thickness: 4).w(100).box.rounded.clip(Clip.antiAlias).makeCentered().pOnly(bottom: 10);
  
}
