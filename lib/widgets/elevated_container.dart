import 'package:flutter/material.dart';
import 'package:freal_flutter/core/constants/constants.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const ElevatedContainer({
    super.key,
    required this.child,
    this.bgColor = AppColors.primaryColor,
    this.padding,
    this.borderRadius = AppValues.smallRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: AppColors.elevatedContainerColorOpacity,
              spreadRadius: 3,
              blurRadius: 8,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: AppColors.primaryColor),
      child: child,
    );
  }
}
