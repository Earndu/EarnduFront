import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class manage with ChangeNotifier {
  String total;
  String user;
  SharedPreferences prefs;
  String pwd;

  void setPwd(String val) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('pwd', val);
  }

  void getPwd() async {
    prefs = await SharedPreferences.getInstance();
    total = (prefs.getString('pwd') ?? "None");
    print(pwd);
    notifyListeners();
  }

  void setTotal(String val) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('data1', val);
  }

  void getTotal() async {
    prefs = await SharedPreferences.getInstance();
    total = (prefs.getString('data1') ?? "None");
    print(total);
    notifyListeners();
  }

  void setUser(String val) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('data2', val);
  }

  void getUser() async {
    prefs = await SharedPreferences.getInstance();
    user = (prefs.getString('data2') ?? "None");
    print(user);
    print('good');
    notifyListeners();
  }

  String pwdVal() {
    return pwd;
  }

  String totalVal() {
    return total;
  }

  String userVal() {
    return user;
  }
}
