import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  Widget build(BuildContext context) {
    String userName = "";
    String passWord = "";
    String fullName = "";
    String eMail = "";
    String birthDay = "";

    return Scaffold(
      body: Center(
        child: Container(
          width: 1000,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(34)),
              boxShadow: [
                BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0)
              ],
              color: const Color(0xffffc12f)),
          //Earndu 글씨
          child: Column(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: Text("Earndu",
                      style: const TextStyle(
                          color: const Color(0xffff7f41),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Arial",
                          fontStyle: FontStyle.normal,
                          fontSize: 40.0),
                      textAlign: TextAlign.left)),
              Container(
                width: 281,
                height: 54,
                margin: const EdgeInsets.only(bottom: 12),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
