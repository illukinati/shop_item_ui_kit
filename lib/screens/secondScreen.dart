import 'package:flutter/material.dart';
import 'package:shop_item_ui_kit/components/easyShopCard.dart';
import 'package:shop_item_ui_kit/components/shopBuilder.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => new _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Items iphone = new Items(
    itemName: 'iPhone X',
    prePrice: '¥ 140,000',
    price: '¥ 129.000',
    rating: 4.5,
    urlImage:
        'https://store.storeimages.cdn-apple.com/4981/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/x/iphone-x-silver-select-2017?wid=305&hei=358&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1515602510472',
  );

  Items samsung = new Items(
    itemName: 'Samsung Galaxy S9',
    prePrice: '¥ 165,000',
    price: '¥ 180.000',
    rating: 2.5,
    urlImage: 'https://cdn.alzashop.com/ImgW.ashx?fd=f3&cd=SAMO0157a',
  );

  Items xiaomeng = new Items(
    itemName: 'Xiaomeng',
    prePrice: '¥ 65,000',
    price: '¥ 80.000',
    rating: 1.5,
    urlImage: 'https://image2.geekbuying.com/ggo_pic/2018-06-09/201806901027291el827mj.jpg',
  );

  List<Items> itemList;

  void printing(){
    print("hogehoge");
  }

  List<Widget> _childrenGenerator() {
    final List<Widget> shopItem = <Widget>[];
    itemList.forEach((item){
      shopItem.add(
        EasyShopCard(
          image: NetworkImage(item.getUrlImage),
          itemName: item.getItemName,
          prePrice: item.getPrePrice,
          price: item.getPrice,
          rating: item.getRating,
          badge: '-20%',
          badgeBgColor: Colors.blue[400],
          height: 330.0,
          imageHeight: 200.0,
          button: 'Buy',
          onTap: printing,          
        ),
      );
    });

    return shopItem;
  }

  @override
  initState(){
    super.initState();
    itemList = [iphone, samsung, xiaomeng];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: ShopBuilder(
            height: 330.0,
            column: 2,
            children: _childrenGenerator(),
          ),
        ),
      ),
    );
  }
}

class Items {
  final String itemName;
  final String urlImage;
  final String prePrice;
  final String price;
  final double rating;

  const Items(
      {this.rating, this.prePrice, this.itemName, this.price, this.urlImage});

      String get getItemName => itemName;
      String get getUrlImage => urlImage;
      String get getPrePrice => prePrice;
      String get getPrice => price;
      double get getRating => rating;
}
