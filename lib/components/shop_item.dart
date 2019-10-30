import 'package:flutter/material.dart';

class ShopItem extends StatefulWidget {
  const ShopItem({
    Key key,
    this.id = 0, //商品ID
    this.image = "", //图片
    this.name = "", //商品名称
    this.price = 0.00, //商品价格
  }) : super(key: key);

  final int id; //商品ID
  final String image; //图片
  final String name; //商品名称
  final double price; //价格

  @override
  _ShopItems createState() => new _ShopItems();
}

class _ShopItems extends State<ShopItem> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        constraints: BoxConstraints(minWidth: 170.0),
        color: Colors.white,
        width: 170.0,
        height: 242.5,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  widget.image,
                  height: 170.0,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    widget.name,
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1), fontSize: 13.0),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )

              ],
            ),
            Positioned(
              bottom: 3.0,
              left: 8.0,
              child: Text(
                "￥${widget.price.toString()}",
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            )
          ],
        ));
  }
}
