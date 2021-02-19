import 'package:flutter/material.dart';

// 여기서 부터 시작
class start extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  'Earndu',
                  style: TextStyle(fontSize: 32),
                ),
                height: 250,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                child: RaisedButton(
                  child: Text('Let\'s go!'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => homePage()));
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10),
                  ),
                  textColor: Colors.black,
                  color: Colors.white,
                ),
                width: 250,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}

class Tabset {
  Tabset(this.text, this.icon);
  final String text;
  final IconData icon;
}

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homePage();
}

class _homePage extends State<homePage> {
  TabController controller;

  final Tabsets = [
    Tabset('Home', Icons.home),
    Tabset('Favorite', Icons.star),
    Tabset('Quiz', Icons.school),
    Tabset('Info', Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: Tabsets.map((Tabset ts) {
                return Tab(
                  text: ts.text,
                  icon: Icon(ts.icon, color: Colors.black),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.call),
              Icon(Icons.account_box),
              Icon(Icons.assignment_outlined),
              Icon(Icons.call),
            ],
          ),
        ),
      ),
    );
  }
}
