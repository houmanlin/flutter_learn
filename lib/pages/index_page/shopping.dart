import 'package:flutter/material.dart';


class ShoppingPage extends StatefulWidget{
  _shoppingPage createState() => new _shoppingPage();

}

class _shoppingPage extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("购物车"),
      ),
      body: Center(
        child: Text("购物车"),
      ),
    );
  }

}

