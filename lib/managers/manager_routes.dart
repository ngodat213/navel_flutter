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
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: registerScreen,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: accountSetupScreen,
      page: () => const AccountSetupScreen(),
      binding: AccountSetupBinding(),
    ),
    GetPage(
      name: bookingDetailScreen,
      page: () => const BookingSuccessScreen(),
      binding: BookingDetailBinding(),
    ),
    GetPage(
      name: countryDetailScreen,
      page: () => const CountryDetailScreen(),
      binding: CountryDetailBinding(),
    ),
    GetPage(
      name: createBookingScreen,
      page: () => const CreateBookingScreen(),
      binding: CreateBookingBinding(),
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: groupBookingScreen,
      page: () => const GroupBookingScreen(),
      binding: GroupBookingBinding(),
    ),
    GetPage(
      name: homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: nearbyDestinationScreen,
      page: () => const NearbyDestinationScreen(),
      binding: NearbyDestinationBinding(),
    ),
    GetPage(
      name: registerCompleteScreen,
      page: () => const RegisterCompleteScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => const RegisterCompleteScreen(),
      binding: ResetPasswordBinding(),
    ),
    // GetPage(
    //   name: searchScreen,
    //   page: () => const Search(),
    //   binding: SearchBinding(),
    // ),
    GetPage(
      name: selectPaymentSreen,
      page: () => const SelectPaymentScreen(),
      binding: SelectPaymentBinding(),
    ),
    GetPage(
      name: termOfService,
      page: () => const TermOfServiceScreen(),
      binding: SelectPaymentBinding(),
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => const VerificationCodeScreen(),
      binding: VerificationCodeBinding(),
    ),
    GetPage(
      name: verificationYouIdentityScreen,
      page: () => const VerificationYouIdentityScreen(),
      binding: VerificationYouIdentityBinding(),
    ),
    GetPage(
      name: videoScreen,
      page: () => const VideoScreen(),
      binding: VideoBinding(),
    ),
    GetPage(
      name: yourBookmarkScreen,
      page: () => const YourBookmarkScreen(),
      binding: YourBookmarkBinding(),
    ),
  ];
}
