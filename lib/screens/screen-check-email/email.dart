import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/screens/controllers_screen/recover_code.dart';
import 'package:login_page/styles/styles.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecoverCode>(
      init: RecoverCode(),
      builder: (_) => Scaffold(
        body: Padding(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Colores("#D2EDFF"),
                    maxRadius: 80,
                    child: Icon(
                      Icons.email_outlined,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Check your email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We heve sent  password recovery instruction\n to your email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
