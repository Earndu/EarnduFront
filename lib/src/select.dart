import 'package:flutter/material.dart';
import 'mainPage.dart';

class selectData {
  final String selData;
  selectData(this.selData);
}

//여기서 필요한것은 로그인 페이지에서 가져온 사용자 아이디와 비밀번호 데이터
class selectPage extends StatefulWidget {
  State<StatefulWidget> createState() => _selectPage();
}

class _selectPage extends State<selectPage> {
  @override
  selectData data;

  //이미지 선택을 위한 컨테이너를 함수로 정의
  Widget selectContents(
      BuildContext context, String contentsVal, IconData contentsIcon) {
    //inkwell방식을 채택해서 컨테이너 자체가 버튼의 역할을 할 수 있도록 지정
    return InkWell(
      //내부 구성으로 컨테이너를 선언
      child: Container(
        width: 160,
        //디자인은 일단 임의로 지정
        margin: const EdgeInsets.only(bottom: 40),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffff7f41), width: 4),
            borderRadius: BorderRadius.circular(20)),
        //내부 구성은 column 형태로 지정
        child: Column(
          //첫번째 구성요소는 아이콘으로 지정, 매개변수를 받아 표시한다
          children: [
            Icon(
              contentsIcon,
              size: 120,
              color: const Color(0xffff7f41),
            ),
            //두번쨰 구성 요소는 텍스트로 지정, 매개변수를 받아 표시한다.
            Text(
              "$contentsVal",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
      //터치시 화면 전환이 이루어지도록 한다. 이때 데이터를 갖고 이동한다.
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => mainPage()));
      },
    );
  }

  Widget build(BuildContext context) {
    //패딩 지정을 위해 앱의 가로 길이를 받아왓다
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    //머티리얼 앱을 반환하도록 설정
    return MaterialApp(
      //거지같은 디버그 줄 제거
      debugShowCheckedModeBanner: false,
      //앱 호환이 되도록 visualDensity지정
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //배경색은 우리가 기존에 사용하는 색 지정
      color: const Color(0xffffc12f),
      //메인은 스캐폴드 프레임을 가져다 쓴다
      home: Scaffold(
        //전체적인 구성이 가운데에 치우쳐 있기 때문에 center body구성
        body: Center(
          //컨테이너 위젯을 자식으로 선언, 프레임을 가져오기 위함
          child: Container(
            //전체 위젯의 크기를 가져오기 위해 가로, 세로 길이를 받아 온다
            width: _width,
            height: _height,
            //색은 기존 디자인의 배경색
            color: const Color(0xffffc12f),
            //컬럼 위젯을 사용해 내부의 구성요소들을 위젯으로 처리한다.
            child: Column(
              //전반적인 구성에 맞게 가운데로 위젯 정렬
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//첫번쨰 위젯은 컨테이너로 안에 텍스트를 받아들여 구성
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 30, bottom: 15),
                  child: Text(
                    "Choose daily contents",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                ),
                //이후의 위젯은 함수로 처리
                selectContents(context, "Image contents", Icons.image_outlined),
                selectContents(context, "Sound contents", Icons.mic_outlined),
                selectContents(context, "Read contents", Icons.menu_book)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
