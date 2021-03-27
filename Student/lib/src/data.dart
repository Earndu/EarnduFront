import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class student with ChangeNotifier {
  //유저 정보를 저장할 변수들
  String username;
  String password;
  String fullname;
  String email;
  DateTime birthday;
  String imagedata;

  //위시 리스트 요청에 대한 변수 선언
  List<int> wish_list;
  List<Map<String, dynamic>> curriculum;

  //학생에 대한 기본적인 생성자
  student({
    this.username,
    this.password,
    this.fullname,
    this.email,
    this.birthday,
    this.imagedata,
    this.wish_list,
    this.curriculum,
  });

  Future<http.Response> postRequest() async {
    var url = 'http://svclaw.ipdisk.co.kr:11002/student/total';

    Map Post_data = {
      "username": "student01",
      "password": "student01",
      "wish_list": [1],
      "curriculum": [
        {
          "content_id": 1,
          "percentage": 20,
          "score": 100,
          "end_datetime": "2021-03-26 20:40"
        },
        {"content_id": 2, "percentage": 50}
      ]
    };

    //encode Map to JSON
    var body = json.encode(Post_data);

    var response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    var dataConvertedToJSON = json.decode(response.body);
    // print(dataConvertedToJSON);
    print("${dataConvertedToJSON['data']['content_list']['0']}");
    print("");
    print(dataConvertedToJSON);

    return response;
  }
}

Contents a = new Contents(1, '따님을제게줏빗이보', 20, 22.0, 100);
List<Contents> maradona = [a];

//카테고리에 대한 클래스

class Contents {
  int id;
  String title;
  int level;
  double percentage;
  int score;

  var end_datetime = DateTime.parse("2021-03-01 13:32");
  Teacher cuty;
  Contents(int id, String titile, int level, double percentage, int score) {
    this.id = id;
    this.title = title;
    this.level = level;
    this.percentage = percentage;
    this.score = score;
  }
  Contents.fromJson(Map<String, dynamic> data) {
    this.id = data['id'];
    this.title = data['title'];
    this.level = data['level'];
    this.percentage = data['percentage'];
    this.score = data['score'];
  }

  void printContents() {
    print(this.id);
  }
}

class Teacher {
  int id;
  String fullname;
}
