part of 'constants.dart';

enum CustomStyle { NORMAL, REGARN }

Map<CustomStyle, String> customFont = {
  CustomStyle.NORMAL: "",
  CustomStyle.REGARN: "Regarn",
};

class AppStyles {
  AppStyles._();

  static TextStyle getTextStyle({
    CustomStyle style = CustomStyle.NORMAL,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color color = const Color(0xFF000000),
  }) {
    return TextStyle(
      fontFamily: customFont[style], // Maps the style to the customFont
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
