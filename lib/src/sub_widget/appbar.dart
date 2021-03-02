import 'package:flutter/material.dart';

Widget tabfunc(BuildContext context, IconData icon) {
  return Tab(
    // 콘테이너 선언을 통해 탭 선언
    child: Container(
      //탭의 형태를 boxDecoration으로 지정한다

      child: Align(
          //배치 형태를 가운데 배치로 지정
          alignment: Alignment.center,
          //자식 위젯으로 아이콘 삽입
          child: Icon(
            //아이콘 타입 지정
            icon,
            //아이콘의 색 지정
            color: Color(0xffff7f41),
            size: 35,
          )),
    ),
  );
}

Widget appBar(BuildContext context) {
  return AppBar(
    //배경색은 하얀색
    backgroundColor: Colors.white,
    //그라데이션 설정은 없도록
    elevation: 0,
    //탭 하단에 탭바를 생성하도록 선언
    bottom: TabBar(
      indicatorColor: Colors.white,
      //선택되지 않았을 시, 디폴트 색은 하얀색으로
      unselectedLabelColor: Colors.blue,
      //탭 클릭 범위에 대한 설정
      indicatorSize: TabBarIndicatorSize.label,
      //탭을 클릭했을 시에 대한 설정
      indicator: BoxDecoration(
        //전체적인 크기를 원의 형태로 변경
        borderRadius: BorderRadius.circular(50),
        //선택된 탭의 색을 변경
      ),
      // 탭리스트에 탭 선언
      tabs: [
        tabfunc(context, Icons.home_outlined),
        tabfunc(context, Icons.favorite_outline),
        tabfunc(context, Icons.school),
        tabfunc(context, Icons.person_outline_rounded),
      ],
    ),
  );
}
