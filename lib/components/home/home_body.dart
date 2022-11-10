import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_banner.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center, //나중에 Align 빼보기, Cloumn 으로 해보기
      child: SizedBox(
        width: getBodyWidth(context),
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
