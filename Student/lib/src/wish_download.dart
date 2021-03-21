import 'package:flutter/material.dart';
import 'package:flutter_app/src/contents.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'contents.dart';

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

  //리스트  요소 함수
  Widget wish_list(BuildContext context, String subName, String tName,
      List<String> sList, List<String> tList) {
    bool favoritePressed = true;
    IconData data = Icons.favorite;
    return InkWell(
      onTap: () {
        showCupertinoModalBottomSheet(
            backgroundColor: Color(0xfffbfbfb),
            expand: true,
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                controller: ModalScrollController.of(context),
                child: Container(
                  padding: const EdgeInsets.all(28),
                  child: Column(
                    children: [
                      Container(
                          child: Row(
                        children: <Widget>[
                          Container(
                              width: 59,
                              height: 59,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13)),
                                  color: const Color(0xffffc12f))),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                    child: Text(subName,
                                        style: const TextStyle(
                                            decoration: TextDecoration.none,
                                            color: const Color(0xff3d4047),
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Arial",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20.0),
                                        textAlign: TextAlign.left)),
                                Container(
                                    margin: const EdgeInsets.only(top: 9),
                                    alignment: Alignment.bottomLeft,
                                    child: Text("Math",
                                        style: const TextStyle(
                                            decoration: TextDecoration.none,
                                            color: const Color(0xff5c5d60),
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Arial",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15.0),
                                        textAlign: TextAlign.left)),
                              ],
                            ),
                          )
                        ],
                      )),
                      Container()
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        width: 300,
        height: 83,
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            boxShadow: [
              BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 0)
            ],
            color: const Color(0xffffffff)),
        child: Row(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(left: 17),
                width: 59,
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    color: const Color(0xffffc12f))),
            Container(
              margin: const EdgeInsets.only(left: 17),
              width: 150,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 11, bottom: 4),
                    child: Text('$subName',
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Arial",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    child: Text("$tName",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Arial",
                            fontStyle: FontStyle.normal,
                            fontSize: 10.0),
                        textAlign: TextAlign.left),
                  )
                ],
              ),
            ),
            InkWell(
              child: Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(left: 25, top: 30),
                child: Icon(
                  Icons.favorite,
                  color: Color(0xffff7f41),
                ),
              ),
              onTap: () {
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }

  //리스트  요소 함수
  Widget download_list(BuildContext context, String subName, String tName) {
    bool favoritePressed = false;
    int remain = 0;
    return Container(
      width: 280,
      height: 83,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0)
          ],
          color: const Color(0xffffffff)),
      child: InkWell(
        child: Row(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(left: 17),
                width: 59,
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    color: const Color(0xffffc12f))),
            Container(
              margin: const EdgeInsets.only(left: 17),
              width: 150,
              height: 83,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 11, bottom: 4),
                    child: Text('$subName',
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Arial",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    child: Text("$tName",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Arial",
                            fontStyle: FontStyle.normal,
                            fontSize: 10.0),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: InkWell(
                            child: Icon(
                              Icons.delete,
                              color: Color(0xffff7f41),
                            ),
                            onTap: () {
                              showAlertDialog(context) {
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Color(0xffff7f41),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          style: const TextStyle(
                                              color: const Color(0xffff2f2f),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Arial",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 20.0),
                                          text: "delete "),
                                      TextSpan(
                                          style: const TextStyle(
                                              color: const Color(0xff3d4047),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Arial",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 20.0),
                                          text: "this contents?")
                                    ])),
                                  ],
                                );
                                Widget remindButton = FlatButton(
                                    child: Text("Remind me later"),
                                    onPressed: () {});
                                AlertDialog alert = AlertDialog(
                                  title: Text("Notice"),
                                  content: Text(
                                      "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
                                  actions: [],
                                );
                              }

                              ;
                            },
                          ),
                        ),
                        Container(
                          child: Text("$remain" + ' week later',
                              style: const TextStyle(
                                  color: const Color(0xff5c5d60),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Arial",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 10.0)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 30,
              height: 60,
              margin: const EdgeInsets.only(
                left: 25,
              ),
              child: IconButton(
                iconSize: 25.0,
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(
                    0xffff7f41,
                  ),
                  size: 50,
                ),
                onPressed: () {
                  print('Hello');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => contentsPageStateful(
                              contentsName: subName, contentsType: 1)));
                },
              ),
            )
          ],
        ),
        onTap: () {
          print("object");
        },
      ),
    );
  }
}
