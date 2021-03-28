import 'package:flutter/material.dart';
import 'package:flutter_app/src/data.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class contentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: contentListStateful(),
    );
  }
}

class contentListStateful extends StatefulWidget {
  final String subName;

  contentListStateful({
    Key key,
    this.subName,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _contentListStateful();
}

class _contentListStateful extends State<contentListStateful> {
  var favoritePressed = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        child: Column(
          children: <Widget>[
            //과목이름이 들어갈 텍스트
            Container(
              padding: const EdgeInsets.only(top: 47, left: 28),
              margin: const EdgeInsets.only(bottom: 12),
              alignment: Alignment.topLeft,
              child: // Mathsub
                  Text(widget.subName,
                      style: const TextStyle(
                          color: const Color(0xff3d4047),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Arial",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0),
                      textAlign: TextAlign.left),
            ),
            //텍스트 밑의 바
            Container(
                width: 320,
                height: 0,
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 29),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffededed), width: 3))),
            Container(
              height: _height * 0.88,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                children: <Widget>[
                  contents(context, 'Elementary Math', 'Orlando', 0),
                  contents(context, 'Basic English', 'Garry', 1),
                  contents(context, 'History of world', 'Bob', 2),
                  contents(context, 'Elementary Math', 'Orlando', 3),
                  contents(context, 'Basic English', 'Garry', 4),
                  contents(context, 'History of world', 'Bob', 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //리스트  요소 함수
  //이미지 매개변수  추가해서 이미지또한 들어갈 수 있게 하자
  Widget contents(
    BuildContext context,
    String subName,
    String tName,
    int indexNum,
  ) {
    return Container(
      width: 300,
      height: 83,
      margin: const EdgeInsets.symmetric(vertical: 10),
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
            Container(
              width: 30,
              height: 50,
              margin: const EdgeInsets.only(left: 25, top: 30),
              child: IconButton(
                iconSize: 25.0,
                icon: favoritePressed[indexNum]
                    ? Icon(
                        Icons.favorite,
                        color: Color(0xffff7f41),
                      )
                    : Icon(
                        Icons.favorite_outline,
                        color: Color(0xffff7f41),
                      ),
                onPressed: () {
                  setState(() {
                    if (!favoritePressed[indexNum]) {
                      //데이터에 추가를 해야겠다
                      favoritePressed[indexNum] = !favoritePressed[indexNum];
                    } else {
                      //데이터를 삭제한다.
                      favoritePressed[indexNum] = !favoritePressed[indexNum];
                    }
                  });
                },
              ),
            )
          ],
        ),
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
      ),
    );
  }
}
