import 'package:flutter/material.dart';
import 'package:login_page/styles/styles.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height:240,
                  ),
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
        ],
      ),
    );
  }
}
