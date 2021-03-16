import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_app/src/contentList.dart';
import 'package:flutter_app/src/sub_widget/mypage_widget.dart';
import '../contentList.dart';

//과목이름 갱신용
//
@override
Widget setSub(BuildContext context, String sub) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    alignment: Alignment(-0.72, 0.0),
    child: Text(
      '$sub',
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    ),
  );
}

@override
//리스트 뷰 제작용
Widget setListItem(BuildContext context, String sub, IconData iconVal) {
  return Container(
    padding: const EdgeInsets.only(top: 7),
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    width: 74,
    height: 74,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        boxShadow: [
          BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 0)
        ],
        color: const Color(0xffffc12f)),
    child: InkWell(
      child: Column(
        children: <Widget>[
          Icon(
            iconVal,
            size: 40,
          ),
          AutoSizeText(
            sub,
            style: TextStyle(
              fontSize: 15,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => contentListStateful(subName: sub)));
      },
    ),
  );
}

@override
Widget historyCard(BuildContext context, String sub, double wid_val) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 0),
    margin: const EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
    ),
    width: 320,
    height: 83,
    child: InkWell(
      onTap: () {
        print("$sub");
      },
      child: Container(
        width: 320,
        height: 83,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0)
          ],
          color: const Color(0xffffffff),
        ),
        child: Row(
          children: [
            Container(
              width: 59,
              height: 59,
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/Elephant_1.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: const Color(0xffffc12f),
              ),
            ),
            // child: Image.asset
            //   'image/menubook.png',
            //   width: 50,
            //   height: 50,
            // )),
            Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 11, bottom: 4),
                    child: Text('play with number!',
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Arial",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    child: Text("Teacher username",
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
          ],
        ),
      ),
    ),
  );
}
