import 'package:flutter/material.dart';

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
  contentListStateful({Key key, this.subName}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _contentListStateful();
}

class _contentListStateful extends State<contentListStateful> {
  @override
  Widget build(BuildContext context) {
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
              height: 680,
              width: 375,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                children: <Widget>[
                  wish_list(context, 'Elementary Math', 'Orlando'),
                  wish_list(context, 'Basic English', 'Garry'),
                  wish_list(context, 'History of world', 'Bob'),
                  wish_list(context, 'Elementary Math', 'Orlando'),
                  wish_list(context, 'Basic English', 'Garry'),
                  wish_list(context, 'History of world', 'Bob'),
                  wish_list(context, 'Elementary Math', 'Orlando'),
                  wish_list(context, 'Basic English', 'Garry'),
                  wish_list(context, 'History of world', 'Bob'),
                  wish_list(context, 'Elementary Math', 'Orlando'),
                  wish_list(context, 'Basic English', 'Garry'),
                  wish_list(context, 'History of world', 'Bob'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //리스트  요소 함수
  Widget wish_list(BuildContext context, String subName, String tName) {
    bool favoritePressed = false;
    return Container(
      width: 300,
      height: 83,
      margin: const EdgeInsets.symmetric(vertical: 20),
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
                icon: favoritePressed == true
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
                    favoritePressed = !favoritePressed;
                  });
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
