import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Code extends GetxController {
  GlobalKey key = new GlobalKey();
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 8), () => Get.offAllNamed("/ps"));
    super.onInit();
  }
}
