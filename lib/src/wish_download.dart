import 'package:flutter/material.dart';

//위시리스트, 다운로드리스트를 만들기위한 statefulwidget선언
class wish_down extends StatefulWidget {
  State<StatefulWidget> createState() => _wish_down();
}

//상태변화를 위한 선언
class _wish_down extends State<wish_down> {
  Widget build(BuildContext context) {
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
                height: _height / 3,
                //컨테이너 내부에 다시 컬럼 형태로 위젯 지정
                child: Column(
                  //전체적인 배치는 왼쪽에 붙도록 지정
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //
                  children: [
                    //텍스트가 들어갈 컨테이너
                    Container(
                      width: _width,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 29),
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
                                color: const Color(0xff000000), width: 3)))
                  ],
                ),
              ),
              //다운로드 리스트를 작성하기 위한 컬럼 할당
              Container(
                //높이는 위시리스트와 동일하게
                height: _height / 3,
                //컬럼형태로 내부 위젯의 배치 지정
                child: Column(
                  //전반적인 위젯의 위치는 왼쪽으로
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //텍스트가 들어갈 컨테이너
                    Container(
                      width: _width,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 29),
                      child: Text("Wish list",
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
                                color: const Color(0xff000000), width: 3)))
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
