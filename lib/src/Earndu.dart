import 'package:flutter/material.dart';

class Earndu extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('임시로 만든 것임을 명확히 명시하는 바임미다.'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Let\'s start Earndu!'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => App()));
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check_circle_outline),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => App()));
          },
        ),
      ),
    );
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState(); // 전 단계에서 만든 클래스
  }
}

class AppState extends State<App> {
  int counter = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        appBar: AppBar(
          title: Text("이거또한 임시로 만들어 본거심을 명시하는 바임미다."),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            //이벤트 콜백 함수
            setState(() {
              counter += 1;
            });
          },
        ),
      ),
    );
  }
}
