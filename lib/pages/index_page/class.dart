import 'package:flutter/material.dart';


class ClassPage extends StatefulWidget{
  _classPage createState() => new _classPage();

}

class _classPage extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("分类"),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            color: Color.fromRGBO(255, 255, 255, 1),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 12.0),
                hintText: "输入所查询商品",
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(29),
                  borderSide: BorderSide(color: Colors.red, width: 2.0)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(29),
                    borderSide: BorderSide(color: Colors.red, width: 2.0)
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 80),
            child:Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Color.fromRGBO(242, 243, 245, 1),
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index){
                          return Container(
                              height: 33.0,
                              color: Color.fromRGBO(242, 243, 245, 1),
                              child:
                              Container(
                                width: double.infinity,
                                height: 100,
                                color: Color.fromRGBO(242, 243, 245, 1),
                                child: Text(
                                  "${index}", textAlign: TextAlign.center,
                                  style: TextStyle(height: 2),),

                              )


                          );
                        }
                    ),
                  )


                ),
                Expanded(
                  flex: 7,
                  child:Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: GridView.count(
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          crossAxisCount: 3,          //每列3个
                          childAspectRatio: 1.0,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image(image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",)),
                                Text("商品")
                              ],
                            ),
                          ],
                        )
                    )
                ),
              ],
            )
          )
        ],
      )
    );
  }

}

