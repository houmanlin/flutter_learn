import 'package:city_shop/components/shop_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  _homePage createState() => new _homePage();
}

class _homePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[

            //搜索查询框
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              color: Color.fromRGBO(255, 255, 255, 1),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Icon(Icons.search),
                    hintText: "查询商品",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(29.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(29.0))),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
              color: Color.fromRGBO(242, 243, 245, 1),
              child: Column(

                children: <Widget>[
                  //轮播图
                  Container(
                      height: 170,
                      child: Swiper(
                        autoplay: true,
                        itemBuilder: (BuildContext context, int index){
                          return Image.network(
                            SwiperList[index],
                            fit: BoxFit.fitWidth,
                          );
                        },

                        autoplayDelay: 4000,
                        duration:600,
                        itemCount: SwiperList.length,
                        pagination:SwiperPagination(
                            alignment:Alignment.bottomCenter,
                            builder: DotSwiperPaginationBuilder(
                                color: Color.fromRGBO(255,255,255,0.5),
                                activeColor:Color.fromRGBO(255,255,255,1)
                            )
                        ),
                      )
                  ),

                  //店铺广告1
                  Container(
                    height: 31.0,
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.network(advert,fit: BoxFit.fitWidth,),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.network(advert,fit: BoxFit.fitWidth,),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.network(advert,fit: BoxFit.fitWidth,),
                        ),
                      ],
                    ),
                  ),

                  //店铺宫格1
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:gridList
                    ),
                  ),
                  //店铺宫格2
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:gridList
                    ),
                  ),

                  //公告
                  Container(
                    height: 31.0,
                    margin: EdgeInsets.only(top: 2.0),
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                            width:28.0,
                            height: 14.0,
                            image:AssetImage("images/bulletin.png")
                        ),

                        Container(
                          width: 310,
                          padding: EdgeInsets.only(top: 5.0),
                          margin: EdgeInsets.only(left: 10.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Text(
                                  "赶快法律手段氟苯尼考莫失良机放不进等你开始了吗分久必合你什么啦肯德基发红包的你出门上课了绝代风华你没上课等级划分不能吃",
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //广告2
                  Container(
                    constraints: BoxConstraints(
                      minWidth:double.infinity
                    ),
                    height: 60.0,
                    margin: EdgeInsets.only(top: 12.0),
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(SwiperList[0],fit:BoxFit.fill,),
                    ),



                  ),

                  //商品列表
                  Container(
                    constraints: BoxConstraints(
                      minWidth: double.infinity
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("猜你喜欢"),
                        ShopItem(
                          name: "鲜香三明治（犬用）155克鲜香三明治（犬用）155克鲜香三明治（犬用）155克鲜香三明治（犬用）155克鲜香三明治（犬用）155克"
                              "鲜香三明治（犬用）155克鲜香三明治（犬用）155克鲜香三明治（犬用）155克鲜香三明治（犬用）155克鲜香三明治（犬用）155克",
                          price: 12.00,
                          image: "http://b-ssl.duitang.com/uploads/item/201502/03/20150203144840_zGmdm.jpeg",
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),

          ],
        ));
  }


  List SwiperList = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571551686219&di=15e2410e362aa366ffe5dab74b8534b8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201604%2F23%2F20160423185321_K2ueY.jpeg",
  ];


  String advert = "https://jcc-city-shop.oss-cn-beijing.aliyuncs.com/c6078b31-3718-48eb-bc79-0b38d873d7f2.png";

  List<Widget> gridList = [
    Column(
      children: <Widget>[
        CircleAvatar(

          //头像半径
          radius: 24.0,
          backgroundImage: NetworkImage(
              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'
          ),
        ),
        Container(margin: EdgeInsets.only(top: 8.0),
          child: Text("会员专区",
              style:
              TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(51, 51, 51, 1)
              )
          ),)
      ],
    ),
    Column(
      children: <Widget>[
        CircleAvatar(

          //头像半径
          radius: 24.0,
          backgroundImage: NetworkImage(
              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'
          ),
        ),
        Container(margin: EdgeInsets.only(top: 8.0),
          child: Text("会员专区",
              style:
              TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(51, 51, 51, 1)
              )
          ),)
      ],
    ),
    Column(
      children: <Widget>[
        CircleAvatar(

          //头像半径
          radius: 24.0,
          backgroundImage: NetworkImage(
              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'
          ),
        ),
        Container(margin: EdgeInsets.only(top: 8.0),
          child: Text("会员专区",
              style:
              TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(51, 51, 51, 1)
              )
          ),)
      ],
    ),
    Column(
      children: <Widget>[
        CircleAvatar(

          //头像半径
          radius: 24.0,
          backgroundImage: NetworkImage(
              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'
          ),
        ),
        Container(margin: EdgeInsets.only(top: 8.0),
          child: Text("会员专区",
              style:
              TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(51, 51, 51, 1)
              )
          ),)
      ],
    ),
    Column(
      children: <Widget>[
        CircleAvatar(

          //头像半径
          radius: 24.0,
          backgroundImage: NetworkImage(
              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'
          ),
        ),
        Container(margin: EdgeInsets.only(top: 8.0),
          child: Text("会员专区",
              style:
              TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(51, 51, 51, 1)
              )
          ),)
      ],
    ),


  ];




}



