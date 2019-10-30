


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/***
 * tabBar列表项
 */
List<BottomNavigationBarItem> bottomList = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home, color: Colors.blueGrey),
    activeIcon: Icon(
      Icons.home,
      color: Colors.red,
    ),
  ),
  BottomNavigationBarItem(
    title: Text("分类"),
    icon: Icon(Icons.apps, color: Colors.blueGrey),
    activeIcon: Icon(
      Icons.apps,
      color: Colors.red,
    ),
  ),
  BottomNavigationBarItem(
    title: Text("购物车"),
    icon: Icon(Icons.shopping_cart, color: Colors.blueGrey),
    activeIcon: Icon(
      Icons.shopping_cart,
      color: Colors.red,
    ),
  ),
  BottomNavigationBarItem(
    title: Text("我的"),
    icon: Icon(Icons.person, color: Colors.blueGrey),
    activeIcon: Icon(
      Icons.person,
      color: Colors.red,
    ),
  ),
];