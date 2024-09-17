import 'package:flutter/cupertino.dart';
import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:freal_flutter/core/base/base.debug.dart';
import 'package:freal_flutter/requests/auth.request.dart';
import 'package:freal_flutter/services/services.dart';
import 'package:get/get.dart' hide Trans;
import 'package:localize_and_translate/localize_and_translate.dart';

class VerificationController extends BaseController {
  final AuthRequest _authRequest = AuthRequest();

  final String email = Get.arguments;
  final TextEditingController _otp = TextEditingController();

  /// Handle check otp to app
  Future<void> handleCheckOtp() async {
    _authRequest
        .verificationCode(email: email, code: _otp.text)
        .then((value) async {
      if (value.allGood) {
        await AuthServices.handleDeviceLogin(value);
      }
    }).onError((error, stackTrace) {
      BaseDebug.print(error);
      showErrorMessage("$error");
    });
  }

  /// Handle check otp to reset passowrd
  Future<void> onPressVerificaiton() async {
    if (_otp.text.isEmpty) {
      showMessage("Please fill otp".tr());
    } else {
      showLoading();
      // Handle request
      await _authRequest
          .verificationCode(email: email, code: _otp.text)
          .then((value) {
        if (value.allGood) {
        } else {}
      }).onError((err, t) {});
    }
  }
}
