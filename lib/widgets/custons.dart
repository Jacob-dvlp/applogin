import 'package:flutter/material.dart';
import 'package:login_page/styles/styles.dart';

class Button extends StatelessWidget {
  final double value = 10;
  final String? title;
  final Color? colors, colorIcon, colorsCirc;
  final IconData? icon;
  final TextStyle? style;

  const Button({
    Key? key,
    this.title,
    this.colors,
    this.icon,
    this.style,
    this.colorIcon,
    this.colorsCirc,
  }) : super(key: key);

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
                  padding: const EdgeInsets.only(right: 10, left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: colorsCirc,
                      child: Icon(
                        icon,
                        color: colorIcon,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                ),
                Center(
                  child: Text(
                    "$title",
                    style: TextStyle(color: Colores("#FFFFFF"), fontSize: 19),
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

class ButoonEmail extends StatelessWidget {
  final double value = 10;
  final String? title;
  final Color? colors, colorIcon;
  final IconData? icon;
  final TextStyle? style;

  const ButoonEmail(
      {Key? key,
      this.title,
      this.colors,
      this.icon,
      this.style,
      this.colorIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 340,
        height: 65,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(value),
              topRight: Radius.circular(value),
              bottomLeft: Radius.circular(value),
              bottomRight: Radius.circular(value)),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color?>(colors),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colores("#F7FDFF"),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 20),
                  child: CircleAvatar(child: Icon(icon)),
                ),
                Container(
                  width: 20,
                ),
                Text(
                  "$title",
                  style: TextStyle(
                      color: Colores("#CDD1D4"),
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
