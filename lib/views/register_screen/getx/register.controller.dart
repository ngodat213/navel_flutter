import 'package:flutter/cupertino.dart';
import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:freal_flutter/models/api.response.dart';
import 'package:freal_flutter/requests/auth.request.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class RegisterController extends BaseController {
  final AuthRequest _authRequest = AuthRequest();

  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  Future<void> handleRegister() async {
    if (_fullname.text.isEmpty ||
        _username.text.isEmpty ||
        _password.text.isEmpty) {
      showMessage("Please fill username and password".tr());
    } else {
      showLoading();
      final response = await _authRequest.register(
        fullname: _fullname.text,
        email: _username.text,
        password: _password.text,
      );

      await handleDeviceRegister(response);
    }

    hideLoading();
  }

  Future<void> handleDeviceRegister(ApiResponse response) async {}
}
