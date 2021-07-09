import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_page/screens/controllers_screen/creat_password.dart';
import 'package:login_page/styles/styles.dart';
import 'package:login_page/widgets/custons.dart';

class CreatPassword extends StatelessWidget {
  const CreatPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatNewPassword>(
      init: CreatNewPassword(),
      builder: (_) => Scaffold(
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
                    height: 1,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundColor: Colores("#D2EDFF"),
                      child: Icon(
                        FontAwesomeIcons.lock,
                        color: Colores("#009DFF"),
                        size: 110,
                      ),
                      maxRadius: 97,
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                    child: Container(
                      color: Colores("#F6FBFF"),
                      child: TextFormField(
                        obscureText: _.password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => _.showPassord(),
                            icon: _.password
                                ? Icon(
                                    Icons.visibility,
                                    color: Colors.blue,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: Colors.blue,
                                  ),
                          ),
                          hintText: "Nova senha",
                          hintStyle: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      color: Colores("#F6FBFF"),
                      child: TextFormField(
                        obscureText: _.password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => _.showPassord(),
                            icon: _.password
                                ? Icon(
                                    Icons.visibility,
                                    color: Colors.blue,
                                  )
                                : Icon(Icons.visibility_off,
                                    color: Colors.blue),
                          ),
                          hintText: "Confirmar a senha",
                          hintStyle: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 340,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colores("009DFF")),
                          onPressed: () {},
                          child: Text(
                            "Create",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colores("#FFFFFF"), fontSize: 19),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
