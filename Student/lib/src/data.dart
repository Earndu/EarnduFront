import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Student {
  //유저 정보를 저장할 변수들
  static String username = null;
  static String fullname = null;
  static String email = null;
  static DateTime birthday = null;
  static int imagedata = null;

/*
  //위시 리스트 요청에 대한 변수 선언
  List<int> wish_list;
  List<Map<String, dynamic>> curriculum;
  Map<String, dynamic> testcurri = {
    "content_id": 1,
    "percentage": 20,
    "score": 100,
    "end_datetime": "2021-03-26 20:40"
  };
  //학생에 대한 기본적인 생성자
  Student({
    this.username,
    this.password,
    this.fullname,
    this.email,
    this.birthday,
    this.imagedata,
    this.wish_list,
    this.curriculum,
  });
  */

  // *** 어플 실행 시 저장된 데이터 불러와야함 ***
  static void setUsername(String _username) {
    username = _username;
  }
  static void setFullName(String _fullName) {
    fullname = _fullName;
  }
  static void setEmail(String _email) {
    email = _email;
  }
  static void setBirthday(DateTime _birthday) {
    birthday = _birthday;
  }
  static void setImageId(int _imageData) {
    imagedata = _imageData;
  }

  static Future<Map> postRequest(String username, String password) async {
    var url = 'https://svclaw.ipdisk.co.kr:11003/student/total';

    Map postData = {
      "username": username,
      "password": password,
      "wish_list": Contents.wishList
    };

    if (Curriculum.list.isNotEmpty) {
      List<Map> curriculum = List();
      for (Curriculum item in Curriculum.list) {
        Map curItem = {
          'content_id': item.contentId,
          'percentage': item.percentage
        };

        if (item.score != null) {
          curItem['score'] = item.score;
          curItem['end_datetime'] = item.endDate;
        }

        curriculum.add(curItem);
      }

      postData['curriculum'] = curriculum;
    }

    var body = json.encode(postData);

    var rawResponse = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    var response = json.decode(rawResponse.body);
    // print(response);

    return response;
  }
}

// Contents a = new Contents(1, '따님을제게줏빗이보', 20, 22.0, 100);
// List<Contents> maradona = [a];

//카테고리에 대한 클래스

class Contents {
  static List<Contents> totalList = List();
  static List<int> wishList = List();
  static List<Contents> downloadList = List();

  int id = null;
  int category = null;
  int type = null;
  String title = null;
  int level = null;
  String content = null;
  List<String> res_image = null;
  String res_sound = null;

  Teacher teacher;

  // int percentage;
  // int score;
  // var end_datetime = DateTime.parse("2021-03-01 13:32");
  // Teacher cuty;

  /*Contents(int id, String titile, int level, double percentage, int score) {
    this.id = id;
    this.title = title;
    this.level = level;
    this.percentage = percentage;
    this.score = score;
  }*/

  Contents({
    this.id, this.category, this.type, this.title, this.level,
    this.content, this.res_image, this.res_sound
  });

  Contents.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    category = data['category'];
    type = data['type'];
    title = data['title'];
    level = data['level'];
    teacher = Teacher.fromJson(data['teacher']);
  }

  Contents.detailFromJson(Map<String, dynamic> data) {
    id = data['id'];
    category = data['category'];
    type = data['type'];
    title = data['title'];
    level = data['level'];
    teacher = Teacher.fromJson(data['teacher']);
    content = data['content'];
    res_sound = data['res_sound'];
    res_image = data['res_image'].toString().split('<SEP>');
  }

  void printContents() {
    print(this.id);
  }
}

class Teacher {
  int id = null;
  String fullname = null;

  Teacher.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    fullname = data['fullname'];
  }
}

class Curriculum {
  static List<Curriculum> list = List();

  int contentId = null;
  int percentage = null;
  int score = null;
  String endDate = null;

  Curriculum.fromJson(Map<String, dynamic> data) {
    this.contentId = data['content_id'];
    this.percentage = data['percentage'];
    this.score = data['score'];
    this.endDate = data['end_datetime'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content_id': contentId,
      'percentage': percentage,
      'score': score,
      'end_datetime': endDate
    };
  }
}