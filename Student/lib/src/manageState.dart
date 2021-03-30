import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Manage {
  static String total = null;
  static String user = null;
  static String pwd = null;
  static SharedPreferences prefs;

  static void setPwd(String val) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('pwd', val);
  }

  static void getPwd() async {
    prefs = await SharedPreferences.getInstance();
    total = (prefs.getString('pwd') ?? "None");
    print(pwd);
  }

  static void setTotal(String val) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('data1', val);
  }

  static void getTotal() async {
    prefs = await SharedPreferences.getInstance();
    total = (prefs.getString('data1') ?? "None");
    print(total);
  }

  static void setUser(String val) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('data2', val);
  }

  static void getUser() async {
    prefs = await SharedPreferences.getInstance();
    user = (prefs.getString('data2') ?? "None");
    print(user);
  }

  static String pwdVal() {
    return pwd;
  }

  static String totalVal() {
    return total;
  }

  static String userVal() {
    return user;
  }
}
