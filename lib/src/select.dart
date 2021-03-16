import 'package:flutter/material.dart';
import 'mainPage.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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

  final List<String> imgList = [
    "image/image.jpg",
    "image/sound.jpg",
    "image/read.jpg",
  ];

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
      color: const Color(0xfffbfbfb),
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
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                ),

                Container(
                  height: 250,
                  width: 375,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Swiper(
                      scale: 0.8,
                      viewportFraction: 0.75,
                      pagination:
                          SwiperPagination(builder: SwiperPagination.rect),
                      itemCount: imgList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              imgList[index],
                              fit: BoxFit.cover,
                            ));
                      },
                      itemWidth: 300.0,
                      itemHeight: 300.0,
                      onTap: (int index) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => mainPage()));
                      },
                    ),
                  ),
                ),
                //이후의 위젯은 함수로 처리
              ],
            ),
          ),
        ),
      ),
    );
  }
}
