import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/views/your_bookmark_screen/getx/your_bookmark.controller.dart';

class YourBookmarkScreen extends BaseView<YourBookmarkController> {
  YourBookmarkScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('YourBookmarkPage')),
        body: const SafeArea(child: Text('YourBookmarkController')));
  }
}
