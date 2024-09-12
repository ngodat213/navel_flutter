import 'package:flutter/material.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/managers/manager.dart';
import 'package:freal_flutter/views/account_setup_screen/account_setup.screen.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: ManagerRoutes.manager,
      initialRoute: ManagerRoutes.splashScreen,
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      home: AccountSetupScreen(),
    );
  }
}
