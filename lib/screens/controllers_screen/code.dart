import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Code extends GetxController {
  GlobalKey key = new GlobalKey();
  @override
  void onInit() {
    Future.delayed(
        Duration(seconds: 5), () => Get.offAllNamed("/creatpassword"));
    super.onInit();
  }
}
