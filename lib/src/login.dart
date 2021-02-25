import 'package:flutter/material.dart';
import 'package:flutter_app/src/signup.dart';
import 'homePage.dart';

class loginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    String userName = "";
    String passWord = "";

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          color: const Color(0xffffc12f),
          width: 500,
          child: Column(
            children: <Widget>[
              Container(
                width: 300,
                height: 261,
              ),
              Container(
                //첫번째 텍스트 라인
                child: Text("Hello Student !",
                    style: const TextStyle(
                        color: const Color(0xffff7f41),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Arial",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                    textAlign: TextAlign.left),
              ),
              //두번째 텍스트 라인
              Text("Earndu",
                  style: const TextStyle(
                      color: const Color(0xffff7f41),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Arial",
                      fontStyle: FontStyle.normal,
                      fontSize: 40.0),
                  textAlign: TextAlign.left),
              //아이디
              Container(
                width: 241,
                height: 46,
                padding: const EdgeInsets.symmetric(horizontal: 7),
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 0.6,
                          spreadRadius: 0)
                    ],
                    color: const Color(0xffffffff)),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Icon(Icons.person_outline),
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),

              Container(
                width: 241,
                height: 46,
                padding: const EdgeInsets.symmetric(horizontal: 7),
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                          spreadRadius: 0)
                    ],
                    color: const Color(0xffffffff)),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline),
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              //로그인 단추
              InkWell(
                child: Container(
                    margin: const EdgeInsets.all(7),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("Log in",
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Arial",
                            fontStyle: FontStyle.normal,
                            fontSize: 20.0),
                        textAlign: TextAlign.center),
                    width: 111,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 0),
                        ],
                        color: const Color(0xffff7f41))),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => homePage()));
                },
              ),
              InkWell(
                child: Container(
                    child: Text("Sign up",
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Arial",
                            fontStyle: FontStyle.normal,
                            fontSize: 20.0),
                        textAlign: TextAlign.center),
                    margin: const EdgeInsets.all(7),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: 111,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xffff7f41))),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => signUp()));
                },
              )
              //회원가입 단추
            ],
          ),
        ),
      ),
    );
  }
}
