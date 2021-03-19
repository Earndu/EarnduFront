import 'package:flutter/material.dart';
import 'sub_widget/appbar.dart';
import 'mypage.dart';
import 'homePage.dart';
import 'wish_download.dart';

//상태 변동이 수행되어야 하는 스테이트 풀 위젯 선언
class mainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _mainPage();
}

//변환되는 페이지에 대한 선언으로 위의 홈페이지 클래스의 상태를 전달한다.
class _mainPage extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    //각각의 위젯을 위치를 디바이스에 맞게 조정하기 위해 스마트폰의 길이를 저장

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
          // 상단에 탭 생성
          //appBar: //PreferredSize(
          //preferredSize: Size.fromHeight(60), child: appBar(context)),
          bottomNavigationBar: customBar(context),
          //홈, 찜목록, 퀴즈, 사용자 정보 탭에 대한 컨텐츠 설정
          body: TabBarView(children: [
            //홈 탭에 대한 컨텐츠로 컨테이너 타입으로 위젯 시작
            // home(),
            home(),
            wish_down(),
            Icon(Icons.home),
            //마지막 사용자 정보를 가져오는 컨테이너
            myPage()
          ]),
        ),
      ),
    );
  }
}
