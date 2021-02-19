import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

//과목이름 갱신용
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

//리스트 뷰 제작용
Widget setListItem(BuildContext context, String sub, IconData iconVal) {
  return GestureDetector(
    onTap: () {
      print('$sub');
    },
    child: Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      width: 70,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.black)),
      child: Column(
        children: <Widget>[
          Icon(iconVal),
          AutoSizeText(
            'Math',
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

Widget historyCard(BuildContext context, String sub, double wid_val) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 0),
    margin: const EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
    ),
    width: wid_val * 0.95,
    height: 70,
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          //모서리를 둥글게 만들 것이다
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(3),
              child: Image.asset('image/menubook.png')),
          Container(
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.all(3),
            child: Text('오늘의 $sub 강의'),
          ),
        ],
      ),
    ),
  );
}
