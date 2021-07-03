import 'package:get/get.dart';

class RecoverCode extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      Duration(seconds: 5),
      () => Get.offAllNamed("/codepassword"),
    );
    super.onInit();
  }
}
