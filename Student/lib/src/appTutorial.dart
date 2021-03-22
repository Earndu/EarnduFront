import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'mainPage.dart';

class appTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: appTutorialStateful());
    theme:
    ThemeData(primarySwatch: Colors.orange);
  }
}

class appTutorialStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _appTutorialStateful();
}

class _appTutorialStateful extends State<appTutorialStateful> {
  final List<String> tutorialImgList = [
    "image/appTutorial_1.png",
    "image/appTutorial_2.png",
    "image/appTutorial_3.png",
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: _width,
        height: _height - 20,
        child: Swiper(
          pagination: new SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: new DotSwiperPaginationBuilder(
                color: Colors.grey, activeColor: Color(0xffff7f41)),
          ),
          itemCount: tutorialImgList.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              tutorialImgList[index],
              fit: BoxFit.cover,
            );
          },
          onTap: (int index) {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
      ),
    );
  }
}
