import 'package:flutter/material.dart';
import 'signup.dart';

class selectImage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 54, bottom: 38),
                child: Text("choose your character",
                    style: const TextStyle(
                        color: const Color(0xffff7f41),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Arial",
                        fontStyle: FontStyle.normal,
                        fontSize: 25.0),
                    textAlign: TextAlign.left),
              ),
              Container(
                height: 180,
                width: 180,
                margin: const EdgeInsets.only(
                    top: 0, bottom: 20, left: 3, right: 3),
                decoration: BoxDecoration(
                    // image: DecorationImage(
                    //     image: AssetImage('image/Flamingo_1'), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                          spreadRadius: 0)
                    ],
                    color: const Color(0xffff7f41)),
                child: InkWell(
                  child: Image.asset('image/Elephant_1.png'),
                  onTap: () {
                    Navigator.pop(context, 'image/Elephant_1.png');
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 180,
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 20, left: 3, right: 3),
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage('image/Flamingo_1'), fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xffff7f41)),
                    child: InkWell(
                      child: Image.asset('image/Flamingo_1.png'),
                      onTap: () {
                        Navigator.pop(context, 'image/Flamingo_1.png');
                      },
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 20, left: 3, right: 3),
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage('image/Flamingo_1'), fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xffff7f41)),
                    child: InkWell(
                      child: Image.asset('image/Giraffe_1.png'),
                      onTap: () {
                        Navigator.pop(context, 'image/Giraffe_1.png');
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 20, left: 3, right: 3),
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage('image/Flamingo_1'), fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xffff7f41)),
                    child: InkWell(
                      child: Image.asset('image/Hippo_1.png'),
                      onTap: () {
                        Navigator.pop(context, 'image/Hippo_1.png');
                      },
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 20, left: 3, right: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xffff7f41)),
                    child: InkWell(
                      child: Image.asset('image/Koala_1.png'),
                      onTap: () {
                        Navigator.pop(context, 'image/Koala_1.png');
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget chooseImage(BuildContext context, String imageName) {
  return Container(
    height: 150,
    width: 150,
    margin: const EdgeInsets.only(top: 0, bottom: 20, left: 3, right: 3),
    decoration: BoxDecoration(
        // image: DecorationImage(
        //     image: AssetImage('image/Flamingo_1'), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 0)
        ],
        color: const Color(0xffff7f41)),
    child: InkWell(
      child: Image.asset(imageName),
      onTap: () {},
    ),
  );
}
