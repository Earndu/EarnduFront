import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'sub_widget/myPageWidget.dart';

class myPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _myPage();
}

class _myPage extends State<myPage> {
  @override

  //파이차트에 들어갈 각 과목의 퍼센테이지
  double history;
  double math;
  double science;
  double health;
  double sports;

  //학습 시간에 대한 값을 가져오는 변수

  Map<int, int> WeeklyStudytime = {2: 4, 3: 4, 4: 2, 5: 7, 6: 10};
  Map<int, int> MontlyStudytime = {};
  Map<int, int> yearStudytime = {};

  String tmp = "";
  String userName = "";
  int cnt = 0;
  int touchedIndex;
  //이미지랑 아이콘 둘 중 하나를 쓰기 위한 페이지
  void setImage(String img) {
    setState(() {
      if (tmp != "") {
        Image.asset(tmp, fit: BoxFit.cover);
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
                        //상태변화 정의
                        onTap: () {
                          setState(() {
                            cnt = 0;
                          });
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
                        //상태 변화 정의
                        onTap: () {
                          setState(() {
                            cnt = 1;
                          });
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
                        //상태변화 정의
                        onTap: () {
                          setState(() {
                            cnt = 2;
                          });
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
                            mainData(cnt, WeeklyStudytime),
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
