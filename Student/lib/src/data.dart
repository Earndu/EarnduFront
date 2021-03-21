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

//일단 생성자를 통한 초기화 수행

//사용하는 컨텐츠에 대한 정보를 담을 변수 1 = image, 2 = sound, 3 = read
  int contentsVal;

//컨텐츠 정보를 담을 변수들
  List<String> _wishList;
  List<String> _downloadList;

//커리큘럼 정보를 담을 변수들
}
