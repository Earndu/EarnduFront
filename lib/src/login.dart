import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    String userName = "";
    String passWord = "";

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.orange[300],
          child: Column(
            children: <Widget>[
              Container(
                height: 220,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    icon: Icon(Icons.person_outline),
                    labelText: "Username",
                    fillColor: Colors.white,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.lock_outline),
                    labelText: "Password",
                    fillColor: Colors.white,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: RaisedButton(
                    color: Colors.orange[700],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 2,
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(fontSize: 14),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
