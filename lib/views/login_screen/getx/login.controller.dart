import 'package:flutter/cupertino.dart';
import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:freal_flutter/models/api.response.dart';
import 'package:freal_flutter/requests/auth.request.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class LoginController extends BaseController {
  final AuthRequest _authRequest = AuthRequest();

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // Handle login
  Future<void> handleLogin() async {
    if (_username.text.isEmpty || _password.text.isEmpty) {
      showMessage("Please fill username and password".tr());
    } else {
      showLoading();
      // Handle request
      final response = await _authRequest.loginRequest(
        email: _username.text,
        password: _password.text,
      );

      await handleDeviceLogin(response);
    }
    hideLoading();
  }

  Future<void> handleDeviceLogin(ApiResponse response) async {}
}
