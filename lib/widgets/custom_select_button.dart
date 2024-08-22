import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomSelectButton extends StatelessWidget {
  final Widget? suffix;
  final String? label;
  final String? subLabel;
  final TextStyle? labelStyle;
  final TextStyle? subStyle;
  final bool? isSelect;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? width;
  final double? borderRadius;
  final double? padding;
  final VoidCallback? onTap;
  const CustomSelectButton(
      {super.key,
      this.suffix,
      this.label,
      this.subLabel,
      this.isSelect,
      this.borderColor,
      this.backgroundColor,
      this.width,
      this.borderRadius,
      this.padding,
      this.onTap,
      this.labelStyle,
      this.subStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(padding ?? 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          color: backgroundColor,
          border: Border.all(
            width: isSelect != null ? 2 : 0,
            color: borderColor ?? Colors.red,
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
            ).pOnly(left: 20)
          ],
        ),
      ),
    );
  }
}
