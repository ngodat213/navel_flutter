import 'package:flutter/material.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/views/your_bookmark_screen/getx/your_bookmark.controller.dart';

class YourBookmarkScreen extends BaseScreen<YourBookmarkController> {
  const YourBookmarkScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('YourBookmarkPage')),
        body: const SafeArea(child: Text('YourBookmarkController')));
  }
}
