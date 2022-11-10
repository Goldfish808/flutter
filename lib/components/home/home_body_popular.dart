import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopular extends StatelessWidget {
  HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: gap_m),
        _buildPopularTitle(),
        SizedBox(height: gap_m),
        _buildPopularList(),
      ],
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text(
          "한국 숙소 직접 다녀간 게스트의 후기",
          style: h5(),
        ),
        Text(
          "게스트 후기 2,500,500개 이상, 평균 평접 4,7점(5점 만점)",
          style: body1(),
        ),
      ],
    );
  }

  Widget _buildPopularList() {
    //나중에 Container 삭제하기
    return Container(
      child: Wrap(
        children: [
          HomeBodyPopularItem(id: 0),
          SizedBox(width: 7.5),
          HomeBodyPopularItem(id: 1),
          SizedBox(width: 7.5),
          HomeBodyPopularItem(id: 2),
        ],
      ),
    );
  }
}
