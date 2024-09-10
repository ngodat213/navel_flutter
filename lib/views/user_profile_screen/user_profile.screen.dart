import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/user_profile_screen/getx/user_profile.controller.dart';

class UserProfileScreen extends BaseScreen<UserProfileController> {
  const UserProfileScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('UserProfilePage')),
        body: const SafeArea(child: Text('UserProfileController')));
  }
}
