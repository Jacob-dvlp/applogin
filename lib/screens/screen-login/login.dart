import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/styles/styles.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1,
          color: Colores("#009DFF"),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 65, left: 20),
                  child: CircleAvatar(
                    backgroundColor: Colores("#FFFFFF"),
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.chevron_left,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colores("#FFFFFF"),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Back",
                    style: TextStyle(
                        color: Colores("#FFFFFF"),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                    color: Colores("#FFFFFF"),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 467,
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
