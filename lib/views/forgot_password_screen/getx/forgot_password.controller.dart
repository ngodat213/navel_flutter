import 'package:flutter/cupertino.dart';
import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:freal_flutter/core/base/base.debug.dart';
import 'package:freal_flutter/models/account_2fa.model.dart';
import 'package:freal_flutter/models/api.response.dart';
import 'package:freal_flutter/requests/auth.request.dart';

class ForgotPasswordController extends BaseController {
  final AuthRequest _authRequest = AuthRequest();

  final TextEditingController _email = TextEditingController();

  late List<Account2FAModel> account2FAs;

  /// Handle

  Future<void> getAccount2FA(String email) async {
    showLoading();
    // Handle account list 2fa for verification
    await _authRequest.account2FaRequest(email: email).then((value) {
      // Save data
      account2FAs = List<Account2FAModel>.from(
        value.data.map((x) => Account2FAModel.fromJson(x)),
      );
    }).onError((e, t) {
      BaseDebug.print(e);
      showMessage("$e");
    });

    showLoading();
  }

  Future<void> handleDeviceForgotPassword(ApiResponse response) async {}
}
