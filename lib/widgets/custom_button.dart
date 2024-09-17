part of 'widgets.dart';

class CustomButton extends StatelessWidget {
  final Widget? label;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final BoxBorder? boxBorder;
  final double? padding;
  final VoidCallback? onTap;
  const CustomButton(
      {super.key,
      this.label,
      this.backgroundColor,
      this.width,
      this.borderRadius,
      this.padding,
      this.onTap,
      this.labelStyle,
      this.height,
      this.boxBorder});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          border: boxBorder,
          borderRadius: BorderRadius.circular(borderRadius ?? 23),
          color: backgroundColor,
        ),
        child: Center(
          child: label,
        ),
      ),
    );
  }
}
