import 'package:flutter/foundation.dart';

class BaseDebug {
  BaseDebug._();

  static void print(dynamic msg) {
    if (kDebugMode) {
      print(msg);
    }
  }
}
