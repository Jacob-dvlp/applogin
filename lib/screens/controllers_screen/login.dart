import 'package:get/get.dart';

class LoginControllers extends GetxController {
  bool password = true;

  void updateTextfied() {
    password = !password;
    update();
  }
}
