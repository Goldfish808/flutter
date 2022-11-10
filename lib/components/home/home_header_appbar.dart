import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

import '../../constants.dart';
import '../common/logo.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Logo(),
        SizedBox(
          width: gap_s,
        ),
        Text("RoomOfAll", style: h5(mcolor: Colors.white)),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("회원가입", style: subtitle_14(mcolor: Colors.white)),
        SizedBox(width: 20),
        Text("로그인", style: subtitle_14(mcolor: Colors.white))
      ],
    );
  }
}
