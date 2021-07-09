import 'package:get/get.dart';

class CreatNewPassword extends GetxController {
  bool password = false;

  void showPassord() {
    password = !password;
    update();
  }


  
}
