import 'package:flutter/material.dart';
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

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key key,
    this.color,
    this.text,
    this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}
