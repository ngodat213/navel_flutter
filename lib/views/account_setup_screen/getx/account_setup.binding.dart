import 'package:freal_flutter/views/account_setup_screen/getx/account_setup.controller.dart';
import 'package:get/get.dart';

class AccountSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AccountSetupController());
  }
}
