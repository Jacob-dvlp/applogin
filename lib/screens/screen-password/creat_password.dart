import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_page/styles/styles.dart';
import 'package:login_page/widgets/custons.dart';

class CreatPassword extends StatelessWidget {
  const CreatPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colores("#009DFF"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colores("#FFFFFF"),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.2,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Colores("#F6FCFE"),
                    child: Icon(
                      FontAwesomeIcons.lock,
                      color: Colores("#009DFF"),
                      size: 120,
                    ),
                    maxRadius: 100,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        "Creat new password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Your new password must be different from\n previously used passwords",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  height: 110,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: TextFormied(
                    obscureText: false,
                    hintext: "Email",
                    icon: Icons.email,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonSign(
                  onPressed: "/progress",
                  title: "Send",
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Text(
                    "Back to login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colores("#009DFF"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
