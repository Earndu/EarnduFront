import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

//과목이름 갱신용
@override
Widget setSub(BuildContext context, String sub) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    alignment: Alignment(-0.8, 0.0),
    child: Text(
      '$sub',
      textAlign: TextAlign.right,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );
}

@override
//리스트 뷰 제작용
Widget setListItem(BuildContext context, String sub, IconData iconVal) {
  return InkWell(
    //일단 임시로 해당 과목의 이름을
    onTap: () {
      print('$sub');
    },
    child: Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      width: 70,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffffc12f),
      ),
      child: Column(
        children: <Widget>[
          Icon(iconVal),
          AutoSizeText(
            sub,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}

@override
Widget historyCard(BuildContext context, String sub, double wid_val) {
  return InkWell(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      width: wid_val * 0.95,
      height: 70,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
            //모서리를 둥글게 만들 것이다
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: const Color(0xffffc12f),
                ),
                child: Image.asset('image/menubook.png')),
            Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 3),
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
