part of 'constants.dart';

abstract class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xff1D3132);
  static const Color secondColor = Color(0xff244442);
  static const Color borderColor = Color(0xff2B4544);
  static const Color accentColor = Color(0xffD6A367);
  static const Color dividerColor = Color(0xff253D3E);
  static const Color colorWhite = Colors.white;
  static const Color colorWhite70 = Colors.white70;
  static const Color colorWhite54 = Colors.white54;

  static Color elevatedContainerColorOpacity = Colors.grey.withOpacity(0.5);

  static final linearGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xff1D3133).withOpacity(0.1),
      const Color(0xff1D3133).withOpacity(0.05),
      const Color(0xff1D3133).withOpacity(0.1),
      const Color(0xff1D3133),
      const Color(0xff1D3133),
      const Color(0xff1D3133),
      const Color(0xff1D3133),
    ],
  );
}
