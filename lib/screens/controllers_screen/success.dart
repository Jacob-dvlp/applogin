import 'package:get/get.dart';

class Success extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      Duration(seconds: 5),
      () => Get.offAllNamed("/success"),
    );
    super.onInit();
  }
}
