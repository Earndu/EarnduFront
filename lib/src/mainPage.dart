import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'sub_widget/home_widget.dart';
import 'sub_widget/appbar.dart';
import 'mypage.dart';

//상태 변동이 수행되어야 하는 스테이트 풀 위젯 선언
class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homePage();
}

//변환되는 페이지에 대한 선언으로 위의 홈페이지 클래스의 상태를 전달한다.
class _homePage extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    //각각의 위젯을 위치를 디바이스에 맞게 조정하기 위해 스마트폰의 길이를 저장
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _top = MediaQuery.of(context).padding.top;
    double _bottom = MediaQuery.of(context).padding.bottom;

    //
    String sub = "";

    //마테리얼 앱 타입 반환
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //시각적 밀도 지정
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //홈, 찜목록, 퀴즈, 정보기능을 사용하기 위한 탭바 컨트롤러 선언
      home: DefaultTabController(
        // 4개의 길이 지정
        length: 4,
        // 자식 으로 스캐폴드 위젯 생성, 골자를 생성하는 것
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          // 상단에 탭 생성
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(60), child: appBar(context)),
          //홈, 찜목록, 퀴즈, 사용자 정보 탭에 대한 컨텐츠 설정
          body: TabBarView(children: [
            //홈 탭에 대한 컨텐츠로 컨테이너 타입으로 위젯 시작
            Container(
              //배경색 맞춰주기 위해 색 지정
              color: Colors.white,
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
                      margin: const EdgeInsets.all(12),
                      //컨테이너 형태 지정
                      decoration: BoxDecoration(
                        //기울기 지정
                        borderRadius: BorderRadius.circular(16),
                        // 색지정
                        //color: Colors.black,
                      ),
                      //컨테이너 내부 요소로 카드 선언
                      child: Card(
                          //그림자 밝기 지정
                          elevation: 2,
                          //카드를 형태 지정
                          shape: RoundedRectangleBorder(
                              //모서리를 둥글게 만들 것이다
                              borderRadius: BorderRadius.circular(10)),
                          //1차적으로 내부 구성을 열 타입으로 생성, 소개 멘트와 이미지가 들어갈것이다
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width: (_width * 0.9) / 2,
                                  height: _height * 0.25,
                                  margin: const EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  //첫번째 파트로 현재 위젯의 왼쪽 부분
                                  //contaier를 통해 padding과 margin을 지정할거임
                                  child: Text.rich(TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Learning just a',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nonce download!',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '\nYou don\'t worry about a\ndata or wifi. Only once a\n day download content!',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ))),
                              Container(
                                padding: const EdgeInsets.only(top: 25),
                                width: (_width * 0.9) / 3,
                                height: _height * 0.25,
                                // 두번째 열에서 행 형태로 선언을 하여
                                // 내부에 아이콘 두개를 넣을거임
                                child: Column(
                                  children: <Widget>[
                                    //첫번쨰 이미지로 와이파이
                                    Icon(
                                      Icons.wifi,
                                      size: 40,
                                    ),
                                    //두번째 이미지로 스마트폰
                                    Icon(
                                      Icons.smartphone,
                                      size: 70,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),

                    //중간에 위치한 choose category를 작성하기 위해 사용
                    Container(
                      alignment: Alignment(-0.8, 0.0),
                      child: Text(
                        'Choos category',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),

                    //카테고리 컨테이너로 여기에Listview를 만들어 과목을 돌릴거임
                    Container(
                      //컨테이너의 크기 지정
                      height: _height / 8.4,
                      padding: const EdgeInsets.all(10),
                      // 리스트뷰 위젯 생성
                      child: ListView(
                        //가로로 스크롤 할 수 있게 지정
                        scrollDirection: Axis.horizontal,
                        //내부에 미리선언해둔 위젯 반환 함수 호출
                        children: <Widget>[
                          setListItem(context, 'Math', Icons.calculate),
                          setListItem(context, 'Engilish', Icons.spellcheck),
                          setListItem(context, 'Science', Icons.science),
                          setListItem(context, 'Health', Icons.healing),
                          setListItem(context, 'Sports', Icons.sports),
                        ],
                      ),
                    ),
                    //과거 기록에 대한 제목을 작성하는 컨테이너를 함수로 호출
                    setSub(context, 'History'),
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

            Icon(Icons.home),
            Icon(Icons.home),
            //마지막 사용자 정보를 가져오는 컨테이너
            myPage()
          ]),
        ),
      ),
    );
  }
}
