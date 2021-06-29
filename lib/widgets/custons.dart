import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Button extends StatelessWidget {
  final double value = 10;
  final String? title;
  final Color? colors;
  final IconData? icon;

  const Button({Key? key, this.title, this.colors, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 340,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(value),
              topRight: Radius.circular(value),
              bottomLeft: Radius.circular(value),
              bottomRight: Radius.circular(value)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: colors),
            onPressed: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(icon),
                  ),
                ),
                Container(
                  width: 20,
                ),
                Center(
                  child: Text(
                    "$title",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
