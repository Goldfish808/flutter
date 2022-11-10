import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

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
      color: Colors.green,
      height: 70,
      width: popularItemWidth,
      // 나중에 지웠다 추가했다 해보기
      constraints: BoxConstraints(
        minWidth: 320,
      ),
      child: Column(
        children: [
          _buildPopularItemImage(),
          _buildPopularItemStar(),
          _buildPopularItemComment(),
          _buildPopularItemInfo(),
        ],
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return SizedBox();
  }

  Widget _buildPopularItemStar() {
    return SizedBox();
  }

  Widget _buildPopularItemComment() {
    return SizedBox();
  }

  Widget _buildPopularItemInfo() {
    return SizedBox();
  }
}
