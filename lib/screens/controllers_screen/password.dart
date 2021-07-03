import 'package:get/get.dart';

class Password extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      Duration(seconds: 4),
      () => Get.offAllNamed("/email"),
    );
    super.onInit();
  }
}
