import 'package:flutter/material.dart';
import 'package:shop_item_ui_kit/components/starRating.dart';

class CircleShopCard extends StatelessWidget {
  final String itemName;
  final String prePrice;
  final String price;
  final String badge;
  final double rating;
  final double height;
  final double fontSize;
  final ImageProvider image;

  final Color itemNameColor;
  final Color prePriceColor;
  final Color priceColor;
  final Color badgeColor;
  final Color badgeBgColor;
  final Color ratingColor;
  final Function onTap;

  CircleShopCard({
    this.badge,
    this.prePrice,
    this.price,
    this.itemName,
    this.ratingColor,
    this.rating,
    this.badgeColor,
    this.badgeBgColor,
    this.priceColor,
    this.prePriceColor,
    this.itemNameColor,
    this.fontSize,
    this.onTap,
    @required this.image,
    @required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Card(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Stack(
                  children: <Widget>[
                    Image(
                      height: this.height,
                      image: this.image,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Image(
                          image: AssetImage("assets/images/half_circle.png"),
                        ),
                      ],
                    ),
                    (this.badge != null)
                        ? Container(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: const EdgeInsets.all(5.0),
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (this.badgeBgColor != null)
                                      ? this.badgeBgColor
                                      : Colors.blue),
                              alignment: Alignment.center,
                              child: Text(
                                this.badge,
                                style: TextStyle(
                                    color: (this.badgeColor != null)
                                        ? this.badgeColor
                                        : Colors.white),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Container(
                        child: Text(
                          this.itemName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: (this.itemNameColor != null)
                                ? this.itemNameColor
                                : Colors.black,
                            fontSize:
                                (this.fontSize != null) ? this.fontSize : 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              (this.prePrice != null)
                                  ? TextSpan(
                                      text: this.prePrice,
                                      style: TextStyle(
                                        color: (this.prePriceColor != null)
                                            ? this.prePriceColor
                                            : Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    )
                                  : TextSpan(),
                              TextSpan(
                                text: " " + this.price,
                                style: TextStyle(
                                    color: (this.priceColor != null)
                                        ? this.priceColor
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      (this.rating != null)
                          ? Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5.0),
                                  alignment: Alignment.center,
                                  child: StarRating(
                                    rating: this.rating,
                                    color: (this.ratingColor != null)
                                        ? this.ratingColor
                                        : Colors.red[400],
                                    onRatingChanged: (rating) {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(),
                                ),
                              ],
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
