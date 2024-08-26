import 'package:flutter/material.dart';
import 'package:freal_flutter/screens/term_of_service_screen.dart';
import 'package:freal_flutter/screens/verification_you_identity_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Color(0xff1D3132),
          ),
        ),
        home: const TermOfServiceScreen());
  }
}
