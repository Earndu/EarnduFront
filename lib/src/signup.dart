import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'package:intl/intl.dart';

class signUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          cursorColor: Colors.grey,
          primaryColor: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        //머티리얼 앱의 스캐폴드 타입으로 정의
        home: signUp_stateful());
  }
}

class signUp_stateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _signUp_stateful();
}

class _signUp_stateful extends State<signUp_stateful> {
  @override
  Widget build(BuildContext context) {
    DateTime _selectedDateTime = DateTime.now();
    final String formatedData = DateFormat.yMd().format(_selectedDateTime);

    //시간을 갱신하기 위한 함수 setState를 사용하였다.
    void onBirthdayChange(DateTime birthday) {
      setState(() {
        _selectedDateTime = birthday;
      });
    }

//각각의 텍스트를확인할 때는 userName.text처럼 값을 가져올 수 있다.
    TextEditingController userName = TextEditingController();
    TextEditingController passWord = TextEditingController();
    TextEditingController fullName = TextEditingController();
    TextEditingController eMail = TextEditingController();
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: _width,

          color: const Color(0xffffc12f),
          /*
                


            */
          //Earndu 글씨
          child: Column(
            children: <Widget>[
              //첫번째로 들어가는 텍스트 Earndu
              Container(
                //center로 구성되어 있기 때문에 위아래 마진만 조절
                margin: const EdgeInsets.only(top: 25, bottom: 5),
                //자식 위젯은 텍스트, 전체적인 디자인은 zeplin에서 제공하는 형태에 맞춤
                child: Text(
                  "Earndu",
                  style: const TextStyle(
                      //색은 진한 주황색
                      color: const Color(0xffff7f41),
                      //bold 크기는 w700
                      fontWeight: FontWeight.w700,
                      //폰트 스타일은 Arial
                      fontFamily: "Arial",
                      fontSize: 40.0),
                ),
              ),
/*



 */
              Container(
                margin: const EdgeInsets.only(top: 0, bottom: 20),
                width: 150,
                height: 150,
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
                child: Icon(
                  Icons.person_outline,
                  size: 120,
                  color: Colors.white,
                ),
              ),

              /*



                */
              //텍스트필드 1을 위한 컨테이너, 여기서는 유저네임이 들어간다.
              Container(
                //전체적인 크기 지정
                width: 281,
                height: 54,
                //위젯간의 거리를 두기 위한 margin설정
                margin: const EdgeInsets.only(bottom: 12),
                //컨테이너의 형태를 잡기 위한 boxdecoration
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
                //컨테이너 내부의 위젯으로 textfield 지정
                child: TextField(
                  //컨트롤러 설정을 통해 텍스트 필드의 값을 받아온다
                  controller: userName,
                  //내부 설정으 안할 경우 컨테이너 위로 튀어나오기 때문에 설정
                  decoration: InputDecoration(
                    //유저네임을 입력받을 수 있게 안내 설정
                    hintText: 'Username',
                    //인식을 위한 아이콘 설정
                    prefixIcon: Icon(Icons.person_outline),
                    //힌트텍스트의 색을 회색으로 지정
                    hintStyle: TextStyle(color: Colors.grey),
                    //터치되지 않았을 때의 전체적인 경계 지정
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    //터치되었을 때의 전체적인 경계 지정
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              /*
  
  
  
   */
              //텍스트필드 2을 위한 컨테이너, 여기서는 패스워드가 들어간다.
              Container(
                //전체적인 크기 지정
                width: 281,
                height: 54,
                //위젯간의 거리를 두기 위한 margin설정
                margin: const EdgeInsets.symmetric(vertical: 12),
                //컨테이너의 형태를 잡기 위한 boxdecoration
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
                //컨테이너 내부의 위젯으로 textfield 지정
                child: TextField(
                  //커서의 색은 회색으로
                  //컨트롤러 설정을 통해 텍스트 필드의 값을 받아온다
                  controller: passWord,
                  //내부 설정을 안할 경우 컨테이너 위로 튀어나오기 때문에 설정
                  decoration: InputDecoration(
                    //유저네임을 입력받을 수 있게 안내 설정
                    hintText: 'Password',
                    //인식을 위한 아이콘 설정
                    prefixIcon: Icon(Icons.lock_outline),
                    //힌트텍스트의 색을 회색으로 지정
                    hintStyle: TextStyle(color: Colors.grey),
                    //터치되지 않았을 때의 전체적인 경계 지정
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    //터치되었을 때의 전체적인 경계 지정
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              /* 



              */
              //컨테이너3 여기는 user의 fullname이 들어간다
              Container(
                //전체적인 크기 지정
                width: 281,
                height: 54,
                //위젯간의 거리를 두기 위한 margin설정
                margin: const EdgeInsets.symmetric(vertical: 12),
                //컨테이너의 형태를 잡기 위한 boxdecoration
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
                //컨테이너 내부의 위젯으로 textfield 지정
                child: TextField(
                  //커서의 색은 회색으로
                  //컨트롤러 설정을 통해 텍스트 필드의 값을 받아온다
                  controller: fullName,
                  //내부 설정을 안할 경우 컨테이너 위로 튀어나오기 때문에 설정
                  decoration: InputDecoration(
                    //유저네임을 입력받을 수 있게 안내 설정
                    hintText: 'Fullname',
                    //인식을 위한 아이콘 설정
                    prefixIcon: Icon(Icons.person_outline),
                    //힌트텍스트의 색을 회색으로 지정
                    hintStyle: TextStyle(color: Colors.grey),
                    //터치되지 않았을 때의 전체적인 경계 지정
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    //터치되었을 때의 전체적인 경계 지정
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),

//컨테이너3 여기는 user의 Email이 들어간다
              Container(
                //전체적인 크기 지정
                width: 281,
                height: 54,
                //위젯간의 거리를 두기 위한 margin설정
                margin: const EdgeInsets.symmetric(vertical: 12),
                //컨테이너의 형태를 잡기 위한 boxdecoration
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
                //컨테이너 내부의 위젯으로 textfield 지정
                child: TextField(
                  //커서의 색은 회색으로
                  //컨트롤러 설정을 통해 텍스트 필드의 값을 받아온다
                  controller: eMail,
                  //내부 설정을 안할 경우 컨테이너 위로 튀어나오기 때문에 설정
                  decoration: InputDecoration(
                    //유저네임을 입력받을 수 있게 안내 설정
                    hintText: 'Email',
                    //인식을 위한 아이콘 설정
                    prefixIcon: Icon(Icons.mail_outline),
                    //힌트텍스트의 색을 회색으로 지정
                    hintStyle: TextStyle(color: Colors.grey),
                    //터치되지 않았을 때의 전체적인 경계 지정
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    //터치되었을 때의 전체적인 경계 지정
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),

              Container(
                //전체적인 크기 지정
                width: 281,
                height: 54,
                //위젯간의 거리를 두기 위한 margin설정
                margin: const EdgeInsets.symmetric(vertical: 12),
                //컨테이너의 형태를 잡기 위한 boxdecoration
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 2),
                          blurRadius: 6,
                          spreadRadius: 0)
                    ],
                    color: const Color(0xffffffff)),
                //컨테이너 내부의 위젯으로 textfield 지정
                child: CupertinoDateTextBox(
                  hintColor: Colors.grey,
                  onDateChange: onBirthdayChange,
                  hintText: ("Select your birthday"),
                ),
              ),

              InkWell(
                child: Container(
                  width: 111,
                  height: 37,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0)
                      ],
                      color: const Color(0xffff7f41)),
                  child: Text("Sign up",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Arial",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0),
                      textAlign: TextAlign.center),
                ),
                onTap: () {
                  print(_selectedDateTime);
                  Navigator.of(context, rootNavigator: true).pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
