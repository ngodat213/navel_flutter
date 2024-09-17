import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/user_profile_screen/getx/user_profile.controller.dart';

class UserProfileScreen extends BaseView<UserProfileController> {
  UserProfileScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('UserProfilePage')),
        body: const SafeArea(child: Text('UserProfileController')));
  }
}
