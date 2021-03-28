import 'package:flutter/material.dart';
import 'package:flutter_app/src/data.dart';
import 'package:provider/provider.dart';
import 'src/login.dart';

//플루터 시작 부분
void main() {
  runApp(
    MaterialApp(
      //앱을 시작하는 함수, 여기서부터 시작된다.
      debugShowCheckedModeBanner: false,
      title: 'Earndu',

      home: MultiProvider(
        providers: [
          Provider<student>(
            create: (context) => student(),
          )
        ],
        child: loginPage(),
      ),
    ),
  );
}
