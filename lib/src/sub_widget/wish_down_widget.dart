import 'package:flutter/material.dart';

Widget wish_list(BuildContext context, String subName, String tName) {
  IconData favorite = Icons.favorite;

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
            width: 20,
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: IconButton(
              icon: Icon(favorite),
              color: Color(0xffff7f41),
              onPressed: () {
                if (favorite == Icons.favorite) {
                  favorite = Icons.favorite_outline;
                } else {
                  favorite = Icons.favorite;
                }
              },
            ),
          )
        ],
      ),
      onTap: () {},
    ),
  );
}
