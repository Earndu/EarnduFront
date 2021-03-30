//컨텐츠 내용을 표시하는 페이지 컨텐츠 타입에 따라 표시되는 내용이 다르다.

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_app/src/mainPage.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';
import 'data.dart';

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
  final Content content;
  contentsPageStateful({Key key, this.content}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _contentsPageStateful();
}

//일단 제목은 이전 페이지의 터치로부터 가져오는 것이며, 내용 자체는 provider에서 가져오는 것으로 진행
class _contentsPageStateful extends State<contentsPageStateful> {
  bool _play = false;

  @override
  Widget build(BuildContext context) {
    Content.watch(widget.content.id);

    String contentsVal = widget.content.type;
    double _width = MediaQuery.of(context).size.width;

    List<Image> imgList = [
      Image.asset("image/math_1.png", fit: BoxFit.cover),
      Image.asset("image/math_1.png", fit: BoxFit.cover),
      Image.asset("image/math_1.png", fit: BoxFit.cover),
      Image.asset("image/math_1.png", fit: BoxFit.cover),
      Image.asset("image/math_1.png", fit: BoxFit.cover),
      // data,
      // data,
      // data,
      // data,
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
                  Text(widget.content.title,
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
            if (contentsVal == '1')
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  height: 600,
                  child: soundContents(context, 1, ContentName, _play))
            else if (contentsVal == '2')
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  height: 670,
                  child: imageContents(context))
            else
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  height: 670,
                  child: readContents(context))
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

  Widget readContents(BuildContext context) {
    String ReadContent =
        '# PART 01 명사\r\n\r\n[toc]\r\n\r\n- **명사구** : 형용사 + 명사\r\n- **To 부정사[to + 동사원형], 동명사[동사 + ing]** : 명사 역할\r\n- **that + S + V ~** : 명사절\r\n- 명사 + 전치사 + 명사 / 동명사 + 명사[목적어]\r\n\r\n\r\n\r\n## CHAP 01 단수 복수 표현\r\n\r\n### [1] 셀 수 있는 명사 (= 가산 명사)\r\n\r\n셀 수 있는 명사는 반드시 하나(단수) 또는 여럿(복수)임을 표시합니다.\r\n\r\n명사가 하나일 때는 단어 앞에 a나 an을 붙이는데, 명사의 발음이 [a, e, i, o, u]로 시작될 경우 발음을 편하게 하기 위해 a 대신 an을 붙입니다. 명사가 여럿일 때는 단어 끝에 대체로 -(e)s를 붙이지만 예외도 있습니다.\r\n\r\n- **단수** : a bus, an accident, an hour 등\r\n- **복수** :\r\n| 복수 명사 | 예시 |\r\n|:--|:--|\r\n| 대부분의 명사 :<br/> <명사 + -s> | rose - rose**s**<br/>cat - cat**s** |\r\n| -s, -sh, -ch, -o로 끝나는 명사 :<br/> <명사 + -es> | bus - bus**es** <br/> church - church**es** <br/> dish - dish**es** <br/> potato - potato**es** |\r\n| -f, -fe로 끝나는 명사 :<br/> <f나 fe를 v로 고친 후 -es> | shelf - shel**ves** <br/>knife - kni**ves** |\r\n| <자음 + y>로 끝나는 명사 :<br/> <y를 i로 고친 후 -es> | baby - bab**ies**<br/>story - stor**ies** |\r\n- __혼동하기 쉬운 셀 수 있는 명사__\r\n| 단어 | 뜻 |\r\n|:--|:--|\r\n| discount | 할인 |\r\n| document | 문서 |\r\n| location | 위치, 지점 |\r\n| compliment | 칭찬, 찬사 |\r\n| permit | 허가증 |\r\n| purpose | 목적 |\r\n| employee | 직원 |\r\n| increase | 증가 |\r\n| machine | 기계 |\r\n| approach | 접근(법) |\r\n| chance | 기회 |\r\n| position | 직위, 위치 |\r\n\r\n\r\n\r\n### [2] 셀 수 없는 명사 (= 불가산 명사)\r\n\r\n| 단어 | 뜻 |\r\n|:--|:--|\r\n| advice | 조언 |\r\n| equipment | 장비 |\r\n| machinery | 기계류 |\r\n| research | 연구 |\r\n| baggage[luggage] | 수하물 |\r\n| information | 정보 |\r\n| merchandise | 상품 |\r\n| consent | 동의 |\r\n| employment | 고용 |\r\n| access | 접근 (권한) |\r\n| stationery | 문구류 |\r\n| permission | 허가 |\r\n\r\n\r\n### [3] 의미가 비슷한 가산, 불가산 명사\r\n\r\n>의미가 비슷하지만 셀 수 있는 명사 또는 셀 수 없는 명사로 쓰이는 명사를 기억하도록 합니다.\r\n\r\n| 셀 수 있는 명사 | 셀 수 없는 명사 |\r\n|:--|:--|\r\n| employee 직원 | employment 고용 |\r\n| machine 기계 | machinery 기계류 |\r\n| product 상품 | merchandise 상품 |\r\n\r\n\r\n\r\n## CHAP 02 한정사\r\n\r\n### [1] 셀 수 있는 명사 (= 가산 명사)\r\n\r\n##### (1) 단수 가산명사 앞\r\n\r\n| 한정사 | 예 |\r\n|:--|:--|\r\n| each 각각의 | each (guest / ~~guestes~~) |\r\n| every 모든 | every (guest / ~~guestes~~) |\r\n| another 또 다른, 또 하나의 | another (guest / ~~guestes~~) |\r\n\r\n\r\n##### (2) 복수 가산명사 앞\r\n\r\n| 한정사 | 예 |\r\n|:--|:--|\r\n| both 둘 다의 | both (~~product~~ / products) |\r\n| several 여럿의 | several (~~product~~ / products) |\r\n| various[= a variety of] 다양한 | various (~~product~~ / products) |\r\n| a number of 많은 \\~ | a number of (~~product~~ / products) |\r\n| one of the \\~중 하나 | one of the (~~product~~ / products) |\r\n\r\n\r\n### [2] 불가산 명사(or 복수 가산명사) 앞\r\n\r\n| 한정사 | 예 |\r\n|:--|:--|\r\n| any 어떤 \\~ | any employees <br/> any advice |\r\n| some 일부의 | some investors <br/> some information |\r\n| most 대부분의 | most restaurants <br/> most baggage |\r\n| all 모든 | all vehicles <br/> all merchandise |\r\n\r\n\r\n### [4] 주의해야 할 한정사\r\n\r\n\r\n\r\n- **셀 수 있는 복수 명사 앞에만 쓰이는 한정사** : many, (a) few, fewer\r\n- **셀 수 없는 명사 앞에만 쓰이는 한정사** : much, (a) little, less\r\n\r\n| 셀 수 있는 명사 (복수형) | 셀 수 없는 명사 |\r\n|:--|:--|\r\n| many customers <br/>많은 고객들 | much knowledge<br/>많은 지식 |\r\n| a few customers<br/>소수의 고객들 | a little knowledge <br/>약간의 지식|\r\n| few customers <br/>거의 없는 고객들 | little knowledge<br/>희박한 지식 |\r\n';
    return Center(
      child: Markdown(
        data: widget.content.content,
        selectable: true,
        styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
            .copyWith(textScaleFactor: 0.8),
      ),
    );
  }

  Widget imageContents(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.content.res_image.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: (widget.content.res_image[index]),
              ));
        },
      ),
    );
  }
}
