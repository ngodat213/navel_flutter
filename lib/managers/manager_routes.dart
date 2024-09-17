part of 'manager.dart';

class ManagerRoutes {
  ManagerRoutes._();

  static String splashScreen = '/';
  static String onboarding = '/onboarding';
  static String loginScreen = '/loginScreen';
  static String registerScreen = '/registerScreen';
  static String accountSetupScreen = '/accountSetupScreen';
  static String bookingDetailScreen = '/bookingDetailScreen';
  static String countryDetailScreen = '/countryDetailScreen';
  static String createBookingScreen = '/createBookingScreen';
  static String forgotPasswordScreen = '/forgotPasswordScreen';
  static String groupBookingScreen = '/groupBookingScreen';
  static String homeScreen = '/homeScreen';
  static String nearbyDestinationScreen = '/nearbyDestinationScreen';
  static String registerCompleteScreen = '/registerCompleteScreen';
  static String resetPasswordScreen = '/resetPasswordScreen';
  static String selectPaymentSreen = '/selectPaymentSreen';
  static String termOfService = '/termOfService';
  static String verificationCodeScreen = '/verificationCodeScreen';
  static String verificationYouIdentityScreen =
      '/verificationYouIdentityScreen';
  static String videoScreen = '/videoScreen';
  static String yourBookmarkScreen = '/yourBookmarkScreen';

  static var manager = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboarding,
      page: () => OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: accountSetupScreen,
      page: () => AccountSetupScreen(),
      binding: AccountSetupBinding(),
    ),
    GetPage(
      name: bookingDetailScreen,
      page: () => BookingSuccessScreen(),
      binding: BookingDetailBinding(),
    ),
    GetPage(
      name: countryDetailScreen,
      page: () => CountryDetailScreen(),
      binding: CountryDetailBinding(),
    ),
    GetPage(
      name: createBookingScreen,
      page: () => CreateBookingScreen(),
      binding: CreateBookingBinding(),
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: groupBookingScreen,
      page: () => GroupBookingScreen(),
      binding: GroupBookingBinding(),
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: nearbyDestinationScreen,
      page: () => NearbyDestinationScreen(),
      binding: NearbyDestinationBinding(),
    ),
    GetPage(
      name: registerCompleteScreen,
      page: () => RegisterCompleteScreen(),
      binding: RegisterCompleteBinding(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      binding: ResetPasswordBinding(),
    ),
    // GetPage(
    //   name: searchScreen,
    //   page: () =>  Search(),
    //   binding: SearchBinding(),
    // ),
    GetPage(
      name: selectPaymentSreen,
      page: () => SelectPaymentScreen(),
      binding: SelectPaymentBinding(),
    ),
    GetPage(
      name: termOfService,
      page: () => TermOfServiceScreen(),
      binding: SelectPaymentBinding(),
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => VerificationCodeScreen(),
      binding: VerificationCodeBinding(),
    ),
    GetPage(
      name: verificationYouIdentityScreen,
      page: () => VerificationYouIdentityScreen(),
      binding: VerificationYouIdentityBinding(),
    ),
    GetPage(
      name: videoScreen,
      page: () => VideoScreen(),
      binding: VideoBinding(),
    ),
    GetPage(
      name: yourBookmarkScreen,
      page: () => YourBookmarkScreen(),
      binding: YourBookmarkBinding(),
    ),
  ];
}
