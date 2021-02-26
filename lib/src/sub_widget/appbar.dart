import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return AppBar(
    //배경색은 하얀색
    backgroundColor: Colors.white,
    //그라데이션 설정은 없도록
    elevation: 0,
    //탭 하단에 탭바를 생성하도록 선언
    bottom: TabBar(
      //선택되지 않았을 시, 디폴트 색은 하얀색으로
      unselectedLabelColor: Colors.white,
      //탭 클릭 범위에 대한 설정
      indicatorSize: TabBarIndicatorSize.label,
      //탭을 클릭했을 시에 대한 설정
      indicator: BoxDecoration(
          //전체적인 크기를 원의 형태로 변경
          borderRadius: BorderRadius.circular(50),
          //선택된 탭의 색을 변경
          color: Color(0xffff7f41)),
      // 탭리스트에 탭 선언
      tabs: [
        // 첫번쨰 탭인 홈 탭 선언
        Tab(
          // 콘테이너 선언을 통해 탭 선언
          child: Container(
            //탭의 형태를 boxDecoration으로 지정한다
            decoration: BoxDecoration(
                //탭의 형태를 원의 형태로 변경
                borderRadius: BorderRadius.circular(50),
                //테두리의 색을 지정
                border: Border.all(color: Colors.black, width: 1)),
            //탭 내부 배치 형태를 지정
            child: Align(
                //배치 형태를 가운데 배치로 지정
                alignment: Alignment.center,
                //자식 위젯으로 아이콘 삽입
                child: Icon(
                  //아이콘 타입 지정
                  Icons.home_filled,
                  //아이콘의 색 지정
                  color: Colors.black,
                )),
          ),
        ),
        //이하 동문
        Tab(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 1)),
            child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.star,
                  color: Colors.black,
                )),
          ),
        ),
        Tab(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 1)),
            child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.school,
                  color: Colors.black,
                )),
          ),
        ),
        Tab(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 1)),
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
