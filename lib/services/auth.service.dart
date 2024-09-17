part of 'services.dart';

class AuthServices {
  //
  static bool firstTimeOnApp() {
    return LocalStorageService.getBoolValue(AppStrings.firstTimeOnApp) ?? true;
  }

  static firstTimeCompleted() async {
    LocalStorageService.savedBoolValue(AppStrings.firstTimeOnApp, false);
  }

  //
  static bool authenticated() {
    return LocalStorageService.getBoolValue(AppStrings.authenticated) ?? false;
  }

  static Future<bool> isAuthenticated() {
    return LocalStorageService.savedBoolValue(AppStrings.authenticated, true);
  }

  // Token
  static Future<String> getAuthBearerToken() async {
    return LocalStorageService.prefs!.getString(AppStrings.userAuthToken) ?? "";
  }

  static Future<bool> setAuthBearerToken(token) async {
    return LocalStorageService.prefs!
        .setString(AppStrings.userAuthToken, token);
  }

  //Locale
  static String getLocale() {
    return LocalStorageService.prefs!.getString(AppStrings.appLocale) ?? "vi";
  }

  static Future<bool> setLocale(language) async {
    return LocalStorageService.prefs!.setString(AppStrings.appLocale, language);
  }

  //
  //
  static UserModel? currentUser;
  static Future<UserModel> getCurrentUser({bool force = false}) async {
    if (currentUser == null || force) {
      final userStringObject =
          LocalStorageService.prefs!.getString(AppStrings.userKey);
      final userObject = json.decode(userStringObject ?? "{}");
      currentUser = UserModel.fromJson(userObject);
      print("CurrentUser: ${currentUser!.name}");
    }
    return currentUser!;
  }

  ///
  ///
  ///
  static Future<UserModel> saveUser(dynamic jsonObject) async {
    final currentUser = UserModel.fromJson(jsonObject);
    try {
      await LocalStorageService.prefs!.setString(
        AppStrings.userKey,
        json.encode(
          currentUser.toJson(),
        ),
      );

      //subscribe to firebase topic
      // FirebaseService().firebaseMessaging.subscribeToTopic("${currentUser.id}");
      // FirebaseService()
      //     .firebaseMessaging
      //     .subscribeToTopic("d_${currentUser.id}");
      // FirebaseService().firebaseMessaging.subscribeToTopic(currentUser.role);

      return currentUser;
    } catch (error) {
      print("saveUser error ==> $error");
      rethrow;
    }
  }

  static Future<void> handleDeviceLogin(ApiResponse response) async {
    try {
      // Login custom token with firebase
      final firebaseToken = response.body["firebase_token"];
      await FirebaseAuth.instance.signInWithCustomToken(firebaseToken);

      // Save token app
      final token = response.body["token"];
      await AuthServices.setAuthBearerToken(token);

      // Keep login
      await AuthServices.isAuthenticated();

      // Redirect to home screen
      Get.toNamed(ManagerRoutes.homeScreen);
    } on FirebaseAuthException catch (e) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  // //VEHICLE DETAILS
  // //
  // static Vehicle? driverVehicle;
  // static Future<Vehicle?> getDriverVehicle({bool force = false}) async {
  //   if (driverVehicle == null || force) {
  //     final vehicleStringObject =
  //         LocalStorageService.prefs!.getString(AppStrings.driverVehicleKey);
  //     //
  //     if (vehicleStringObject == null || vehicleStringObject.isEmpty) {
  //       driverVehicle = null;
  //     } else {
  //       final vehicleObject = json.decode(vehicleStringObject);
  //       driverVehicle = Vehicle.fromJson(vehicleObject);
  //     }
  //   }
  //   return driverVehicle;
  // }

  // ///
  // ///
  // ///
  // static Future<Vehicle> saveVehicle(dynamic jsonObject) async {
  //   final driverVehicle = Vehicle.fromJson(jsonObject);
  //   try {
  //     //
  //     await LocalStorageService.prefs!.setString(
  //       AppStrings.driverVehicleKey,
  //       json.encode(
  //         driverVehicle.toJson(),
  //       ),
  //     );
  //     //sync vehicle data with free,is_online status with firebase

  //     return driverVehicle;
  //   } catch (error) {
  //     print("saveVehicle error ==> $error");
  //     rethrow;
  //   }
  // }

  // ///
  // ///
  // //
  // static logout() async {
  //   await HttpService().getCacheManager().clearAll();
  //   await LocalStorageService.prefs!.clear();
  //   await LocalStorageService.prefs!.setBool(AppStrings.firstTimeOnApp, false);
  //   FirebaseService()
  //       .firebaseMessaging
  //       .unsubscribeFromTopic("${currentUser?.id}");
  //   FirebaseService()
  //       .firebaseMessaging
  //       .unsubscribeFromTopic("d_${currentUser?.id}");
  //   FirebaseService()
  //       .firebaseMessaging
  //       .unsubscribeFromTopic("${currentUser?.role}");
  // }

  // //
  // static Future<void> syncDriverData(Map<String, dynamic> body) async {
  //   try {
  //     //
  //     final driver = User.fromJson(body["user"]);
  //     final assignedOrders = int.tryParse(
  //           body["user"]["assigned_orders"].toString(),
  //         ) ??
  //         0;
  //     final vehicle = Vehicle.fromJson(body["vehicle"]);
  //     //sync vehicle data with free,is_online status with firebase
  //     // LocationService().firebaseFireStore.
  //     final driverDoc = await LocationService()
  //         .firebaseFireStore
  //         .collection("drivers")
  //         .doc(driver.id.toString())
  //         .get();

  //     //
  //     final docRef = driverDoc.reference;

  //     if (driverDoc.data() == null) {
  //       docRef.set(
  //         {
  //           "id": driver.id,
  //           "free": assignedOrders <= 0 ? 1 : 0,
  //           "online": driver.isOnline ? 1 : 0,
  //           "vehicle_type_id": vehicle.vehicleType!.id,
  //         },
  //       );
  //     } else {
  //       docRef.update(
  //         {
  //           "id": driver.id,
  //           "free": assignedOrders <= 0 ? 1 : 0,
  //           "online": driver.isOnline ? 1 : 0,
  //           "vehicle_type_id": vehicle.vehicleType!.id,
  //         },
  //       );
  //     }
  //   } catch (error) {
  //     print("error ==> $error");
  //   }
  // }
}
