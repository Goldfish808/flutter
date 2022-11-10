import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeHederForm extends StatelessWidget {
  const HomeHederForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: screenWidth < 520
            ? Alignment(0, 0)
            : Alignment(-0.6, 0), // 미디어 쿼리로 수정
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          "모두의숙소에서 숙소를 검색하세요",
          style: h4(),
        ),
        SizedBox(height: gap_xs),
        Text(
          "혼자하는 여행은 적합한 개인실부터 여럿이 함께하는 여행에 좋으 공간안에 숙소까지 모두의 숙소에 다 있습니다 ",
          style: body1(),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(hintText: "근처 추천 장소", prefixText: "위치"),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              child: CommonFormField(hintText: "날짜 입력", prefixText: "체크인"),
            ),
            Expanded(
              child: CommonFormField(hintText: "날짜 입력", prefixText: "체크 아웃"),
            ),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              child: CommonFormField(hintText: "2", prefixText: "성인"),
            ),
            Expanded(
              child: CommonFormField(hintText: "0", prefixText: "어린이"),
            ),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  // TextButton , OutlineButton  ElevatedButton , InkWell + Container ( 컨테이너로 디자인 )
  Widget _buildFormSubmit(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kAccenttColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          print(MediaQuery.of(context).size.width);
        },
        child: Text(
          "검색",
          style: subtitle_14(mcolor: Colors.white),
        ),
      ),
    );
  }
}
