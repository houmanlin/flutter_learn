import 'package:city_shop/pages/index.dart';
import 'package:flutter/material.dart';

import 'pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp(){
    print("代码真的更新了");
  }
  bool islogin = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "城市电商",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: islogin ? Login() : MyHomePage(title: '首页'),
    );
  }
}
