import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:login_page/styles/styles.dart';

class Code extends GetxController {
  GlobalKey key = new GlobalKey();
  @override
  void onInit() {
    Future myFunc(BuildContext ctx, BuildContext context) async {
      Navigator.pop(ctx);
      await Future.delayed(Duration(seconds: 2));
      registerSucesso(context) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext bc) => Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colores("#D2EDFF"),
                    maxRadius: 80,
                    child: Icon(
                      Icons.check,
                      size: 100,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Verfied!!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Hurrah!! You have successfully\n verfied the account",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          ),
        );
      }
    }

    super.onInit();
  }
}
