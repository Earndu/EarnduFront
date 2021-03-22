import 'package:flutter/material.dart';
import 'package:flutter_app/src/contents.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'contents.dart';
import 'sub_widget/wish_down_widget.dart';

//위시리스트, 다운로드리스트를 만들기위한 statefulwidget선언
class wish_down extends StatefulWidget {
  State<StatefulWidget> createState() => _wish_down();
}

/*클래스로*/
//상태변화를 위한 선언
class _wish_down extends State<wish_down> {
  Widget build(BuildContext context) {
    //위시리스트 맵선언

    final List<String> wish_arr_sub = List();
    final List<String> wish_arr_teacher = List();
    wish_arr_sub.add('Elementary Math');
    wish_arr_sub.add('Elementary Math');
    wish_arr_sub.add('Elementary Math');
    wish_arr_teacher.add('Orlando');
    wish_arr_teacher.add('Orlando');
    wish_arr_teacher.add('Orlando');

    List<String> down_arr_sub = List();
    List<String> down_arr_teacher = List();
    down_arr_sub.add('value');
    down_arr_sub.add('value');
    down_arr_sub.add('value');
    down_arr_teacher.add('value');
    down_arr_teacher.add('value');
    down_arr_teacher.add('value');
    //데이터가 들어간다면 아마
    //너비 및 높이를 계산하기 위한 변수 할당
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    // 머티리얼 앱을 반환하도록 설정
    return MaterialApp(
      //디버그 표시는 제거
      debugShowCheckedModeBanner: false,
      //스캐폴드 위젯을 통해 기본 골자를 구성
      home: Scaffold(
        //전체적인 틀을 잡기 위한 컨테이너를 선언
        body: Container(
          //색은 앱 바에 맞춰서 흰색으로
          color: Colors.white,
          //너비는 지원 기기에 맞게 설정
          width: _width,
          //컬럼 형태로 위젯을 배치하도록 했다
          child: Column(
            children: [
              //위시리스트를 작성하기 위한 컬럼 할당
              Container(
                //위시리스트의 요소들이 들어가기 위한 공간 할당
                height: 690,
                //컨테이너 내부에 다시 컬럼 형태로 위젯 지정
                child: ListView(
                  //전체적인 배치는 왼쪽에 붙도록 지정

                  //
                  children: [
                    //텍스트가 들어갈 컨테이너
                    Container(
                      width: _width,
                      margin: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 29),
                      child: Text("Wish list",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Arial",
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0),
                          textAlign: TextAlign.left),
                    ),
                    //텍스트 밑에 있는 바가 들어갈 컨테이너
                    Container(
                        width: 320,
                        height: 0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 29),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffededed), width: 3))),

                    for (int i = 0; i < wish_arr_sub.length; i++)
                      wish_list(context, wish_arr_sub[i], wish_arr_teacher[i],
                          wish_arr_sub, wish_arr_teacher),

                    Container(
                      width: _width,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 29),
                      child: Text("Download list",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Arial",
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0),
                          textAlign: TextAlign.left),
                    ),
                    //텍스트 밑의 바가 들어갈 컨테이너
                    Container(
                        width: 320,
                        height: 0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 29),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffededed), width: 3))),
                    //텍스트 밑의 바가 들어갈 컨테이너
                    Container(
                        width: 320,
                        height: 0,
                        margin: const EdgeInsets.symmetric(horizontal: 29),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffededed), width: 3))),
                    for (int i = 0; i < down_arr_sub.length; i++)
                      download_list(
                          context, down_arr_sub[i], down_arr_teacher[i]),
                    // 리스트뷰가 들어갈 컨테이너
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
