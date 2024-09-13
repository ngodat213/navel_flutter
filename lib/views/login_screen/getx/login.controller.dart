import 'package:flutter/cupertino.dart';
import 'package:freal_flutter/core/base/base.controller.dart';
import 'package:freal_flutter/services/services.dart';

class LoginController extends BaseController {
  final BaseAPI _baseAPI = BaseAPI();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> handleLogin() {}
}
