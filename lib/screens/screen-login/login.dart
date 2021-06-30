import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_page/screens/controllers_screen/login.dart';
import 'package:login_page/styles/styles.dart';
import 'package:login_page/widgets/custons.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginControllers>(
      init: LoginControllers(),
      builder: (_) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Colores("#FFFFFF"),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 467,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: TextFormied(
                                obscureText: false,
                                hintext: "Email or username",
                                icon: Icons.email,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: TextFormied(
                                obscureText: true,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _.password
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    _.updateTextfied();
                                  },
                                ),
                                hintext: "Password",
                                icon: FontAwesomeIcons.lock,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 225),
                              child: Text(
                                "Forgt Password ?",
                                style: TextStyle(
                                  color: Colores("#009DFF"),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            ButtonSign(
                              title: "Sign in",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account ?"),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () => Get.toNamed("/register"),
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colores("#009DFF")),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}