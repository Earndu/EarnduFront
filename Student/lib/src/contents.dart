//컨텐츠 내용을 표시하는 페이지 컨텐츠 타입에 따라 표시되는 내용이 다르다.

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart' show rootBundle;

class contentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      home: contentsPageStateful(),
    );
  }
}

class contentsPageStateful extends StatefulWidget {
  final String contentsName;
  final int contentsType;
  contentsPageStateful({Key key, this.contentsName, this.contentsType})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _contentsPageStateful();
}

//일단 제목은 이전 페이지의 터치로부터 가져오는 것이며, 내용 자체는 provider에서 가져오는 것으로 진행
class _contentsPageStateful extends State<contentsPageStateful> {
  bool _play = false;

  @override
  Widget build(BuildContext context) {
    int contentsVal = 2;
    double _width = MediaQuery.of(context).size.width;
    List<String> imgList = [
      'image/math_1.png',
      'image/math_2.png',
      'image/math_3.png',
      'image/math_4.png',
      'image/math_5.png',
    ];

    String ContentName = "sound/RunningMate.mp3";
    String readcontentsName = 'read/summary.md';

    return Scaffold(
      body: Container(
        width: _width,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 47, left: 28),
              margin: const EdgeInsets.only(bottom: 12),
              alignment: Alignment.topLeft,
              child: // Mathsub
                  Text(widget.contentsName,
                      style: const TextStyle(
                          color: const Color(0xff3d4047),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Arial",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0),
                      textAlign: TextAlign.left),
            ),
            Container(
                width: 320,
                height: 0,
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 29),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffededed), width: 3))),
            if (contentsVal == 1)
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  height: 670,
                  child: imageContents(context, 1, imgList))
            else if (contentsVal == 2)
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  height: 600,
                  child: soundContents(context, 1, ContentName, _play))
            else
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  height: 670,
                  child: readContents(context, 1, readcontentsName))
          ],
        )),
      ),
    );
  }

  Widget soundContents(
      BuildContext context, int contentsType, String contentsName, bool play) {
    return AudioWidget.assets(
      path: "sound/RunningMate.mp3",
      play: _play,
      child: FloatingActionButton(
          backgroundColor: Color(0xffff7f41),
          child: Icon(
            _play ? Icons.pause : Icons.play_arrow,
            size: 230,
          ),
          onPressed: () {
            setState(() {
              _play = !_play;
            });
          }),
      onReadyToPlay: (duration) {
        //onReadyToPlay
      },
      onPositionChanged: (current, duration) {
        //onPositionChanged
      },
    );
  }

//마크다운  파일을 가져오기 위한  함수 Future는 값이 할당되고 나서 타입이 결정
  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  Widget readContents(
      BuildContext context, int contentsType, String readcontentName) {
    return Center(
      child: FutureBuilder(
        future: getFileData(readcontentName),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text('Loading Markdown Info...');
          }
          return Markdown(data: snapshot.data);
        },
      ),
    );
  }

  Widget imageContents(
      BuildContext context, int contentsType, List<String> imgList) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imgList[index],
                    fit: BoxFit.fill,
                  )));
        },
      ),
    );
  }
}
