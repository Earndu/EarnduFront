import 'dart:ui';

import 'package:flutter/material.dart';
import 'homePage.dart';

// 여기서 부터 시작
class start extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 200,
                left: 20,
                child: Container(
                  child: Text(
                    'Earndu',
                    style: TextStyle(fontSize: 40),
                  ),
                  margin: const EdgeInsets.fromLTRB(120, 20, 100, 40),
                ),
              ),

              //절대 좌표 사용
              Positioned(
                top: 90,
                left: 150,
                child: Container(
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Icon(
                      Icons.camera_alt,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 380,
                right: 120,
                child: // 컨테이너 위젯 선언
                    Container(
                  //자식 위젯으로 기울기 위젯 선언
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    //자식으로 이미지 추가
                    child: Icon(
                      Icons.public,
                      size: 40,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 150,
                bottom: 40,
                child: // 컨테이너 위젯 선언
                    Container(
                  //자식 위젯으로 기울기 위젯 선언
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    //자식으로 이미지 추가
                    child: Icon(
                      Icons.audiotrack,
                      size: 40,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 240,
                left: 120,
                //자식 위젯으로 기울기 위젯 선언
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(60 / 360),
                  //자식으로 이미지 추가
                  child: Icon(
                    Icons.calculate,
                    size: 40,
                  ),
                ),
              ),

              Positioned(
                top: 300,
                left: 50,
                //자식 위젯으로 기울기 위젯 선언
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(45 / 360),
                  //자식으로 이미지 추가
                  child: Icon(
                    Icons.imagesearch_roller,
                    size: 40,
                  ),
                ),
              ),

              Positioned(
                bottom: 70,
                right: 70,
                //자식 위젯으로 기울기 위젯 선언
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(340 / 360),
                  //자식으로 이미지 추가
                  child: Icon(
                    Icons.videocam,
                    size: 40,
                  ),
                ),
              ),

              Positioned(
                bottom: 100,
                left: 60,
                //자식 위젯으로 기울기 위젯 선언
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(340 / 360),
                  //자식으로 이미지 추가
                  child: Icon(
                    Icons.book,
                    size: 40,
                  ),
                ),
              ),

              Positioned(
                bottom: 120,
                left: 20,
                child: Container(
                    child: RaisedButton(
                      child: Text('Let\'s go!'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => homePage()));
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      textColor: Colors.black,
                      color: Colors.white,
                    ),
                    width: 200,
                    height: 50,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(80, 50, 100, 50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
