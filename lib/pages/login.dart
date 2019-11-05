
import 'package:city_shop/comm/HttpUtil.dart';
import 'package:city_shop/comm/Request_Uri.dart';
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  @override
  _loginPage createState() => new _loginPage();
}

class _loginPage extends State<Login> {
  String UserName = "";
  String Password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
                padding: EdgeInsets.only(top: 100.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone_iphone),
                          Text("手机")
                        ],
                      ),
                    ),
                    TextField(
                      onChanged: (value)=>{UserName = value},
                      decoration: InputDecoration(
                          hintText: "请输入手机号",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 18.0)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Row(
                        children: <Widget>[Icon(Icons.beenhere), Text("验证码")],
                      ),
                    ),
                    TextField(
                      onChanged: (value)=>{Password = value},
                      decoration: InputDecoration(
                          hintText: "请输入正确的验证码",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 18.0)),
                    ),
                  ],
                )),

            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 11.0),
                  highlightColor: Color.fromRGBO(221, 48, 41, 1),
                  colorBrightness: Brightness.dark,
                  child: Text("登录"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: _loginBtn
                ))
              ],
            ),


      ],
        ),
      )),
    );
  }

  void _loginBtn() {

      //用户输入的用户名以及密码
      Map<String, String> data = {
        "mobile": UserName,
        "pwd": Password
      };
      HttpUtil.getInstance().post(
          API_List["user_login"],
          data,
          (data) {

          },
          (error){
//            print("——————————————————————————————result————————————————————————————————");
//            print(error);
          }
      );
  }
}
