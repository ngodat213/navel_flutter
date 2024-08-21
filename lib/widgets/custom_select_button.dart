import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class CustomSelectButton extends StatelessWidget {
  final Widget? suffix;
  final String? label;
  final TextStyle? labelStyle;
  final String? subLabel;
  final TextStyle? subStyle;
  final bool? isSelect;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? width;
  final double? borderRadius;
  final double? padding;
  const CustomSelectButton(
      {super.key,
      this.suffix,
      this.label,
      this.subLabel,
      this.isSelect,
      this.borderColor,
      this.backgroundColor,
      this.iconColor,
      this.width,
      this.borderRadius,
      this.padding,
      this.labelStyle,
      this.subStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(padding ?? 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        color: backgroundColor,
        border: Border.all(
          width: isSelect == null ? 0 : 1,
          color: borderColor ?? Colors.white,
        ),
      ),
      child: HStack(
        [
          suffix ?? Container(),
          VStack(
            [
              (label ?? "").text.textStyle(labelStyle).make(),
              (subLabel ?? "").text.textStyle(subStyle).make(),
            ],
          )
        ],
      ).pOnly(bottom: Vx.dp20),
    );
  }
}
