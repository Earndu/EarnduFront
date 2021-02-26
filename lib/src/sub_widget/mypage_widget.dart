import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_chart/fl_chart.dart';

@override
//리스트 뷰 제작용
Widget setListItem(BuildContext context, String sub) {
  return InkWell(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: 80,
      height: 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0)
          ],
          color: const Color(0xffffc12f)),
      child: Center(
        child: Text("$sub",
            style: const TextStyle(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
            textAlign: TextAlign.left),
      ),
    ),
    onTap: () {},
  );
}
