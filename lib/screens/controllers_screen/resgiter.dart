import 'package:get/get.dart';

class ResgiterController extends GetxController {
  bool password = false;
  bool valueCheck = true;

  void updateCheckbox() {
    valueCheck = !valueCheck;
    update();
  }

  void updatePassword() {
    password = !password;
    update();
  }
}
