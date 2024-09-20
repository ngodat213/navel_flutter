import 'package:flutter/material.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/managers/manager.dart';
import 'package:freal_flutter/views/cities_detail_screen/cities_detail_screen.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: ManagerRoutes.manager,
      initialRoute: ManagerRoutes.citiesDetailScreen,
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      home: CitiesDetailScreen(),
    );
  }
}
