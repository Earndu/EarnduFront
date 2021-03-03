import 'package:flutter/material.dart';

Widget wish_list(BuildContext context, String subName, String tName) {
  return Container(
    width: 300,
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
        color: const Color(0xffffffff)),
    child: Row(
      children: <Widget>[
        Container(
            width: 59,
            height: 59,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                color: const Color(0xffffc12f))),
      ],
    ),
  );
}
