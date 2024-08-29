part of 'widgets.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.controller,
      this.errorText,
      this.keyboardType = TextInputType.text,
      this.minLines,
      this.maxLines,
      this.validator,
      this.labelText,
      this.labelStyle,
      this.hintTextStyle});

  final String? hintText;
  final TextStyle? hintTextStyle;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? labelStyle;
  final bool obscureText;
  final TextEditingController? controller;
  final String? errorText;
  final TextInputType keyboardType;
  final int? minLines;
  final int? maxLines;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: widget.labelStyle,
        hintText: widget.hintText,
        hintStyle: widget.hintTextStyle,
        errorText: widget.errorText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        contentPadding: const EdgeInsets.all(10),
      ),
      controller: widget.controller,
      validator: widget.validator,
      minLines: widget.minLines,
      maxLines: widget.maxLines ?? 1,
    );
  }

  //check if it's password input
  bool makePasswordVisible = false;

  Widget _getSuffixWidget() {
    if (widget.obscureText) {
      return ButtonTheme(
        minWidth: 30,
        height: 30,
        padding: const EdgeInsets.all(0),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
            //Chỉnh màu nút khi nhấn
            // foregroundColor: AppColor.cancelledColor,
          ),
          onPressed: () {
            setState(() {
              makePasswordVisible = !makePasswordVisible;
            });
          },
          child: Icon(
            (!makePasswordVisible)
                ? FlutterIcons.md_eye_off_ion
                : FlutterIcons.md_eye_ion,
            color: Colors.grey,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
