import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_chart/fl_chart.dart';

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
  return GestureDetector(
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

@override
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
      elevation: 2,
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
            child: Text('daily $sub study'),
          ),
        ],
      ),
    ),
  );
}

Widget drawGraph(BuildContext context) {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  return LineChart(
    LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.black,
            strokeWidth: 0.3,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.black,
            strokeWidth: 0.3,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 20,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 13),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 8,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    ),
  );
}

Widget piechart(BuildContext context) {}
