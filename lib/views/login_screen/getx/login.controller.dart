import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:freal_flutter/core/base/base.debug.dart';
import 'package:freal_flutter/managers/manager.dart';
import 'package:freal_flutter/requests/auth.request.dart';
import 'package:freal_flutter/services/services.dart';
import 'package:get/get.dart' hide Trans;
import 'package:localize_and_translate/localize_and_translate.dart';

class LoginController extends BaseController {
  final AuthRequest _authRequest = AuthRequest();

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  /// Handle login
  Future<void> handleLogin() async {
    try {
      if (_username.text.isEmpty || _password.text.isEmpty) {
        showMessage("Please fill username and password".tr());
      } else {
        showLoading();
        // Handle request
        final response = await _authRequest.loginRequest(
          email: _username.text,
          password: _password.text,
        );

        // Check authv2
        if (response.body['check_otp'] != null) {
          // Redirect to verification code screen
          Get.toNamed(
            ManagerRoutes.verificationCodeScreen,
            arguments: response.body['email'],
          );
        } else {
          // Handle device save token, user and login firebase auth
          await AuthServices.handleDeviceLogin(response);
        }
        hideLoading();
      }
    } on FirebaseAuthException catch (e) {
      BaseDebug.print(e);
      showErrorMessage(e.message!);
    } catch (e) {
      BaseDebug.print(e);
      showMessage("$e");
    }
  }
}
