import 'package:flutter/material.dart';
import 'sub_widget/home_widget.dart';

class home extends StatefulWidget {
  State<StatefulWidget> createState() => _home();
}

class _home extends State<home> {
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _top = MediaQuery.of(context).padding.top;
    double _bottom = MediaQuery.of(context).padding.bottom;

    String sub = "";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          //배경색 맞춰주기 위해 색 지정
          color: const Color(0xfffbfbfb),
          // 전체적인 배치는 가운데 배치로
          child: Center(
            //내부 구성을 위해 다시 컨테이너로 묶는다.
            // column형태로 컨텐츠 배치할것이기 떄문에 자식 위젯 지정
            child: Column(
              // 내부 구성 위젯
              children: <Widget>[
                //앱의 간단한 소개를 위한 부분을 컨테이너로 지정 후 내부에 카드선언할것임

                Container(
                  width: _width * 0.9,
                  height: _height * 0.25,
                  padding: const EdgeInsets.all(00),
                  margin: const EdgeInsets.only(
                      top: 36, left: 27, right: 27, bottom: 27),
                  //컨테이너 형태 지정
                  decoration: BoxDecoration(
                    //기울기 지정
                    borderRadius: BorderRadius.circular(36),
                  ),
                  //컨테이너 내부 요소로 카드 선언
                  child: InkWell(
                    child: Card(
                        //그림자 밝기 지정
                        elevation: 4,
                        //카드를 형태 지정
                        shape: RoundedRectangleBorder(
                            //모서리를 둥글게 만들 것이다
                            borderRadius: BorderRadius.circular(36)),
                        //1차적으로 내부 구성을 열 타입으로 생성, 소개 멘트와 이미지가 들어갈것이다
                        child: Center(
                          child: Text("Tutorial",
                              style: const TextStyle(
                                  color: const Color(0xffffc12f),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Arial",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 40.0),
                              textAlign: TextAlign.left),
                        )),
                  ),
                ),

                //중간에 위치한 choose category를 작성하기 위해 사용
                setSub(context, 'Choose Category'),

                //카테고리 컨테이너로 여기에Listview를 만들어 과목을 돌릴거임
                Container(
                  //컨테이너의 크기 지정
                  height: _height / 8.2,
                  padding: const EdgeInsets.all(10),
                  // 리스트뷰 위젯 생성
                  child: ListView(
                    //가로로 스크롤 할 수 있게 지정
                    scrollDirection: Axis.horizontal,
                    //내부에 미리선언해둔 위젯 반환 함수 호출
                    children: <Widget>[
                      setListItem(context, 'Math', Icons.calculate),
                      setListItem(context, 'English', Icons.spellcheck),
                      setListItem(context, 'Science', Icons.science),
                      setListItem(context, 'Health', Icons.healing),
                      setListItem(context, 'Sports', Icons.sports),
                    ],
                  ),
                ),
                //과거 기록에 대한 제목을 작성하는 컨테이너를 함수로 호출
                setSub(context, "Previous Learned Contents"),
                //컨테이너 호출
                Container(
                  //내부에 카드를 정렬시켜놓고 보이도록 호출
                  child: Column(
                    children: <Widget>[
                      historyCard(context, sub, _width),
                      historyCard(context, sub, _width),
                      historyCard(context, sub, _width),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
