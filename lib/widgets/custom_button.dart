import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  final Widget? suffix;
  final String? label;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final double? width;
  final double? borderRadius;
  final double? padding;
  final VoidCallback? onTap;
  const CustomButton(
      {super.key,
      this.suffix,
      this.label,
      this.backgroundColor,
      this.width,
      this.borderRadius,
      this.padding,
      this.onTap,
      this.labelStyle});

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
        ),
        child: HStack(
          [
            suffix ?? Container(),
            VStack(
              [
                (label ?? "").text.textStyle(labelStyle).makeCentered(),
              ],
            ).pOnly(left: 20).centered(),
          ],
        ),
      ),
    );
  }
}
