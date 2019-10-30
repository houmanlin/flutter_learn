import 'package:flutter/material.dart';


class MyPage extends StatefulWidget{
  _myPage createState() => new _myPage();

}

class _myPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
        child: Text("我的"),
      ),
    );
  }

}

