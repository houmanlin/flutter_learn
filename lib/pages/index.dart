
import 'package:city_shop/comm/CommConfiguration.dart';
import 'package:flutter/material.dart';

import 'index_page/home.dart';
import 'index_page/class.dart';
import 'index_page/my.dart';
import 'index_page/shopping.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  /***
   * 当前页面索引
   */
  var _controllerIndex = PageController(
      initialPage:0
  );
  var _currentIndex = 0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        controller: _controllerIndex,
        children: <Widget>[HomePage(),ClassPage(),ShoppingPage(),MyPage()],
        physics: NeverScrollableScrollPhysics(),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          _controllerIndex.jumpToPage(index);
          setState((){
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: bottomList
      ),
    );
  }
}
