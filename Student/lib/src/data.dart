import 'package:flutter/material.dart';

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
  List<Map<String, String>> curriculum;

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
  factory student.fromJson(Map<String, dynamic> parsedJson) {
    return student(
        username: parsedJson['username'],
        password: parsedJson['password'],
        fullname: parsedJson['fullname'],
        email: parsedJson['email'],
        birthday: parsedJson['birthday'],
        imagedata: parsedJson['imagedata']);
  }
  //위시리스트 증가에 대한 동작
  void add_wish_list(int content_id) => wish_list.add(content_id);

  void delete_wish_list(int content_id) {}
}

//카테고리에 대한 클래스
class Category extends ChangeNotifier {
  //카테고리 데이터를 받아오기 위한 변수
  List<Map<String, String>> data;
}
