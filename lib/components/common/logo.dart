import 'package:flutter/material.dart';

import '../../constants.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 20,
          color: kAccenttColor,
        )
      ],
    );
  }
}
