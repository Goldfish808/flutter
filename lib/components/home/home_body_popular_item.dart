import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({this.id, Key? key}) : super(key: key);

  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    // 나누기 3만 하면 따닥 따닥 붙어서 -5정도 줌

    return Container(
      width: popularItemWidth,
      // 나중에 지웠다 추가했다 해보기
      constraints: BoxConstraints(
        minWidth: 320,
      ),
      child: Column(
        children: [
          _buildPopularItemImage(),
          SizedBox(height: gap_s),
          _buildPopularItemStar(),
          SizedBox(height: gap_s),
          _buildPopularItemComment(),
          SizedBox(height: gap_s),
          _buildPopularItemInfo(),
        ],
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccenttColor),
            Icon(Icons.star, color: kAccenttColor),
            Icon(Icons.star, color: kAccenttColor),
            Icon(Icons.star, color: kAccenttColor),
            Icon(Icons.star, color: kAccenttColor),
          ],
        ),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Text(
      "깔끔하고 다 갖춰져이써엇 좋았어요 :) 위치도 완저 좋아용 다들 여기 살고싶다구 ㅋㅋㅋㅋ 홪아실도 3개예요! 5명이서 씼는것도 전혀 불편함없이 좋았요요^^ 이불도 포근하고 좋습니당 ㅎㅎ",
      style: body1(),
      maxLines: 3,
      overflow: TextOverflow.ellipsis, //글자가 제약을 벗어낳면 안보이게 처리
    );
  }

  Widget _buildPopularItemInfo() {
    return Row(
      children: [
        CircleAvatar(backgroundImage: AssetImage("assets/p1.jpeg")),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle_14(),
            ),
            Text("한국")
          ],
        ),
      ],
    );
  }
}
