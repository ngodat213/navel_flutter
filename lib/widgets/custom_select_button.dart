part of 'widgets.dart';

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
  final double? height;
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
      this.subStyle,
      this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height * 0.1,
        padding: const EdgeInsets.only(left: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 23),
          color: backgroundColor,
          border: Border.all(
            width: isSelect == true ? 2 : 1,
            color: isSelect == true
                ? (borderColor ?? Colors.blue)
                : (backgroundColor ?? Colors.grey),
          ),
        ),
        child: HStack(
          [
            suffix ?? Container(),
            VStack(
              [
                (label ?? "").tr.text.textStyle(labelStyle).make(),
                (subLabel ?? "").text.textStyle(subStyle).make(),
              ],
            ).pOnly(left: 20)
          ],
        ),
      ),
    );
  }
}
