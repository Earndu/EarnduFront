import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(34)),
              boxShadow: [
                BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0)
              ],
              color: const Color(0xffffc12f))),
    );
  }
}
