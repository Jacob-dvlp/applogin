import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/screens/controllers_screen/success.dart';

class ProgressSuccess extends StatelessWidget {
  const ProgressSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Success>(
      init: Success(),
      builder: (_) => Scaffold(
        body: Center(
          child: RefreshProgressIndicator(
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }
}
