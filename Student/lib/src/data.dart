import 'package:flutter/material.dart';

class student with ChangeNotifier {
  //유저 정보를 저장할 변수들
  String username;
  String password;
  String _fullname;
  String _email;
  DateTime _birthday;
  String _imagedata;

  //위시 리스트 요청에 대한
  List<int> wish_list;
  List<Map<String, String>> curriculum;
}

//카테고리에 대한 클래스
class Category extends ChangeNotifier {
  //카테고리 데이터를 받아오기 위한 변수
  List<Map<String, String>> data;
}
