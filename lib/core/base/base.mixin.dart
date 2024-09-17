import 'package:flutter/material.dart';
import 'package:freal_flutter/configs/build.config.dart';
import 'package:logger/logger.dart';

mixin BaseMixin on StatelessWidget {
  // final Logger logger = BuildConfig.instance.config.logger;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: body(context),
    );
  }

  Widget body(BuildContext context);
}
