import 'package:flutter/material.dart';

class myPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _myPage();
}

class _myPage extends State<myPage> {
  @override
  String tmp = "";
  String userName = "";

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
                          setState(() {});
                        },
                      ),
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
}
