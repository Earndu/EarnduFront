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

@override
Widget customBar(BuildContext context) {
  return Container(
    color: const Color(0xfff2f2f2),
    height: 70,
    padding: EdgeInsets.only(bottom: 2, top: 5),
    child: TabBar(
      labelStyle: TextStyle(fontSize: 10),
      labelPadding: const EdgeInsets.only(top: 4),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: const Color(0xfff2f2f2),
      indicatorWeight: 4,
      labelColor: const Color(0xffff7f41),
      unselectedLabelColor: Colors.black38,
      tabs: [
        Tab(
          icon: Icon(
            Icons.home_outlined,
            size: 30,
          ),
          text: 'home',
        ),
        Tab(
          icon: Icon(
            Icons.favorite,
            size: 30,
          ),
          text: 'wish list',
        ),
        Tab(
          icon: Icon(
            Icons.school,
            size: 30,
          ),
          text: 'quiz',
        ),
        Tab(
          icon: Icon(
            Icons.person,
            size: 30,
          ),
          text: 'my page',
        )
      ],
    ),
  );
}
// Widget appBar(BuildContext context) {
//   return AppBar(
//     //배경색은 하얀색
//     backgroundColor: Colors.white,
//     //그라데이션 설정은 없도록
//     elevation: 0,
//     //탭 하단에 탭바를 생성하도록 선언
//     bottom: TabBar(
//       labelColor: Colors.white, //텍스트와 아이콘 색상 변경
//       unselectedLabelColor: Colors.white54,
//       indicatorColor: Colors.white, //선택된 탭의 밑줄
//       indicatorSize: TabBarIndicatorSize.label, //밑줄 너비
//       indicatorWeight: 2, //밑줄 길이
//       // 탭리스트에 탭 선언
//       tabs: [
//         tabfunc(context, Icons.home_outlined),
//         tabfunc(context, Icons.favorite_outline),
//         tabfunc(context, Icons.school),
//         tabfunc(context, Icons.person_outline_rounded),
//       ],
//     ),
//   );
// }
