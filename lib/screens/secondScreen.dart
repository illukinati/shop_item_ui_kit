import 'package:flutter/material.dart';
import 'package:shop_item_ui_kit/components/easyShopCard.dart';
import 'package:shop_item_ui_kit/components/shopBuilder.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => new _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  static Items iphone = new Items(
    itemName: 'iPhone X',
    prePrice: '¥ 140,000',
    price: '¥ 129.000',
    rating: 4.5,
    urlImage:
        'https://store.storeimages.cdn-apple.com/4981/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/x/iphone-x-silver-select-2017?wid=305&hei=358&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1515602510472',
  );

  static Items samsung = new Items(
    itemName: 'Samsung Galaxy S9',
    prePrice: '¥ 165,000',
    price: '¥ 180.000',
    rating: 2.5,
    urlImage: 'https://cdn.alzashop.com/ImgW.ashx?fd=f3&cd=SAMO0157a',
  );

  List<Items> itemList = [iphone, samsung];

  List<Widget> _childrenGenerator() {
    final List<Widget> shopItem = <Widget>[];
    for (int i = 0; i < itemList.length; i++) {
      shopItem.add(
        EasyShopCard(
          image: NetworkImage(itemList[i].getUrlImage),
          itemName: itemList[i].getItemName,
          prePrice: itemList[i].getPrePrice,
          price: itemList[i].getPrice,
          rating: itemList[i].getRating,
          badge: '-20%',
          badgeBgColor: Colors.blue[400],
          height: 300.0,
          imageHeight: 200.0,
        ),
      );
    }

    return shopItem;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: ShopBuilder(
            height: 300.0,
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
