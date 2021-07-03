import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_page/screens/controllers_screen/resgiter.dart';
import 'package:login_page/styles/styles.dart';
import 'package:login_page/widgets/custons.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResgiterController>(
      init: ResgiterController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colores("#009DFF"),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colores("#009DFF"),
                child: Column(
                  children: [
                    Container(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colores("#FFFFFF"),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colores("#FFFFFF"),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 514,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: TextFormied(
                          obscureText: false,
                          hintext: "Name",
                          icon: Icons.person,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: TextFormied(
                          obscureText: false,
                          hintext: "Email or phone",
                          icon: Icons.email,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: TextFormied(
                          obscureText: false,
                          hintext: "Birthday",
                          icon: Icons.calendar_today,
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
                              _.updatePassword();
                            },
                          ),
                          hintext: "Password",
                          icon: FontAwesomeIcons.lock,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1, left: 10),
                        child: Row(
                          children: [
                            Checkbox(
                              value: _.valueCheck,
                              onChanged: (value) {
                                _.updateCheckbox();
                              },
                            ),
                            Text(
                              "I gree with the",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Termos of service",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colores("#009DFF"),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "& privacy politic",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonSign(
                        title: "Resgister",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
