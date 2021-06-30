import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/styles/styles.dart';
import 'package:login_page/widgets/custons.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chevron_left_sharp),
                ),
              ),
            ),
            SvgPicture.asset("assets/svgs/undraw_connected_world_wuay.svg",
                width: 300),
            Text(
              "Get Connect to the\n best Mentors",
              style: styles.textStyle,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Easy way to connect to mentor and  get\n advise solution of design",
                style: styles.textStyle2,
                textAlign: TextAlign.center,
              ),
            ),
            Button(
              title: "Login with Google",
              colors: Colors.redAccent,
              icon: FontAwesomeIcons.google,
            ),
            Button(
              title: "Login with Facebook",
              colors: Colors.blueAccent,
              icon: FontAwesomeIcons.facebook,
            ),
            ButoonEmail(
              title: "Login with Email",
              style: TextStyle(color: Colors.grey),
              colors: Colores("#F6FCFF"),
              icon: Icons.email,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have account?"),
                Text(
                  "Login",
                  style: TextStyle(color: Colores("#77BDE6")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
