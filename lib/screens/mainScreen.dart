import 'package:flutter/material.dart';
import 'package:shop_item_ui_kit/components/circleShopCard.dart';
import 'package:shop_item_ui_kit/components/easyShopCard.dart';
import 'package:shop_item_ui_kit/components/shadowShopCard.dart';
import 'package:shop_item_ui_kit/components/shopBuilder.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  columnController() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFe2c287),
      body: SingleChildScrollView(
        child: ShopBuilder(
          height: 300.0,
          column: 2,
          children: <Widget>[
            new EasyShopCard(
              image: NetworkImage(
                  'https://store.storeimages.cdn-apple.com/4981/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/x/iphone-x-silver-select-2017?wid=305&hei=358&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1515602510472'),
              itemName: 'iPhone X 256Gb',
              prePrice: '¥ 140,000',
              price: '¥ 129,000',
              rating: 4.5,
              badge: '-20%',
              badgeBgColor: Colors.blue[400],
              height: 300.0,
              imageHeight: 200.0,
            ),
            new EasyShopCard(
              image: NetworkImage(
                  'https://cdn.alzashop.com/ImgW.ashx?fd=f3&cd=SAMO0157a'),
              itemName: 'Samsung Galaxy S9',
              itemNameColor: Colors.white,
              price: '¥ 180,000',
              priceColor: Colors.white,
              rating: 3.5,
              ratingColor: Colors.yellowAccent[400],
              backgroundColor: Colors.lightBlue,
              height: 300.0,
              imageHeight: 200.0,
            ),
            new ShadowShopCard(
              onTap: (){},
              image: NetworkImage("https://i2-prod.mirror.co.uk/incoming/article11479196.ece/ALTERNATES/s615/KitKat-trademark-court-case.jpg"),
              height: 330.0,
              itemName: 'Kitkat Original',
              prePrice: '¥ 150',
              price: '¥ 120',
              badge: '-15%',
              badgeBgColor: Colors.orange,   
              rating: 3.0,           
            ),
            new CircleShopCard(
              onTap: (){},
              itemName: 'Kitkat WhatsupBee',
              badge: '-10%',
              badgeBgColor: Colors.green,
              prePrice: '¥ 120',
              price: '¥ 100',
              rating: 2.0,
              fontSize: 18.0,
              ratingColor: Colors.green[500],
              height: 330.0,
              image: NetworkImage("https://cdn.thisiswhyimbroke.com/images/wasabi-kit-kat1-640x533.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
