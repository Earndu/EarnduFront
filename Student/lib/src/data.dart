import 'package:flutter/material.dart';

class earnduData with ChangeNotifier {
  //유저 정보를 저장할 변수들
  int _id;
  int _level;
  String _username;
  String _password;
  String _fullname;
  String _email;
  DateTime _birthday;
  String _imagedata;

//생성자를 통한 초기화 수행

//로그인 및 회원가입 시 필요한 데이터 가져오기
  String setUserName(username) => _username = username;
  String setPassWord(password) => _password = password;

//여기는 회원가입 시 필요한 데이터가져오기
  String setFullName(fullname) => _fullname = fullname;
  String setEmail(email) => _username = email;

//사용하는 컨텐츠에 대한 정보를 담을 변수 1 = image, 2 = sound, 3 = read
  int contentsVal;

//컨텐츠 이름, 강사 정보를 담을 변수들
  List<String> _wishList_subName = List();
  List<String> _wishList_teacherName = List();
  List<String> _downloadList_subName = List();
  List<String> _downloadList_teacherName = List();

//커리큘럼 정보를 담을 변수들

//로그인 액션
  int login_act() {}
  //카테고리 정보를 받아오는 액션

  //컨텐츠 삭제 액션
  String deleteContents(String subName, String tName) {
    _wishList_subName.remove(subName);
    _wishList_subName.remove(tName);
    notifyListeners();
  }
}
