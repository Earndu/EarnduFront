import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
//import 'sub_widget/mypage_widget.dart';

class myPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _myPage();
}

class _myPage extends State<myPage> {
  @override
  //라인 차트를 구성하는 옵션
  LineChartData mainData() {
    return LineChartData(
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xffff7f41),
              fontWeight: FontWeight.bold,
              fontSize: 16),
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
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 2),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
        ),
      ],
    );
  }

//파이차트 데이터
  List<PieChartSectionData> showingSections(int touchedIndex) {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 20 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xffffaf57),
            value: 40,
            title: 'Math',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xffff7f41),
            value: 30,
            title: 'English',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xffff5f57),
            value: 15,
            title: 'History',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xffffdf57),
            value: 15,
            title: 'Science',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }

  String tmp = "";
  String userName = "";
  int cnt = 0;
  int touchedIndex;
  //이미지랑 아이콘 둘 중 하나를 쓰기 위한 페이지
  void setImage(String img) {
    setState(() {
      if (tmp != "") {
        Image.asset(tmp);
      } else {
        Icon(Icons.person);
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 6),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0)
                      ],
                      color: const Color(0xffff7f41)),
                  child: Icon(
                    Icons.person_outline,
                    size: 120,
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Text("Student username",
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "SegoeUI",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                    textAlign: TextAlign.left),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 49),
                margin: const EdgeInsets.symmetric(vertical: 17),
                height: 25,
                alignment: Alignment.centerLeft,
                child: Text("Learning Status",
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "SegoeUI",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                    textAlign: TextAlign.left),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          width: 67,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                    spreadRadius: 0)
                              ],
                              color: const Color(0xffffc12f)),
                          child: Center(
                            child: Text("week",
                                style: const TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0),
                                textAlign: TextAlign.left),
                          ),
                        ),
                        onTap: () {
                          cnt = 0;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          width: 80,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                    spreadRadius: 0)
                              ],
                              color: const Color(0xffffc12f)),
                          child: Center(
                            child: Text("Month",
                                style: const TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0),
                                textAlign: TextAlign.left),
                          ),
                        ),
                        onTap: () {
                          cnt = 1;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          width: 67,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                    spreadRadius: 0)
                              ],
                              color: const Color(0xffffc12f)),
                          child: Center(
                            child: Text("Year",
                                style: const TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0),
                                textAlign: TextAlign.left),
                          ),
                        ),
                        onTap: () {
                          cnt = 2;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1.70,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 18.0, left: 12.0, top: 24, bottom: 12),
                          child: LineChart(
                            mainData(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                margin: const EdgeInsets.only(top: 10),
                child: AspectRatio(
                  aspectRatio: 1.4,
                  child: Card(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          height: 18,
                        ),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: PieChart(
                              PieChartData(
                                  pieTouchData: PieTouchData(
                                      touchCallback: (pieTouchResponse) {
                                    setState(() {
                                      if (pieTouchResponse.touchInput
                                              is FlLongPressEnd ||
                                          pieTouchResponse.touchInput
                                              is FlPanEnd) {
                                        touchedIndex = -1;
                                      } else {
                                        touchedIndex = pieTouchResponse
                                            .touchedSectionIndex;
                                      }
                                    });
                                  }),
                                  borderData: FlBorderData(
                                      show: true,
                                      border: Border.all(
                                        color: Color(0xffffffff),
                                        width: 20,
                                        style: BorderStyle.none,
                                      )),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 30,
                                  sections: showingSections(touchedIndex)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
