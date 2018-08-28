import 'package:flutter/material.dart';
import 'package:shop_item_ui_kit/components/starRating.dart';

class ShadowShopCard extends StatelessWidget {
  final Function onTap;
  final ImageProvider image;
  final String badge;
  final Alignment badgeAlignment;
  final String itemName;
  final String prePrice;
  final String price;
  final double height;
  final double rating;

  final Color badgeColor;
  final Color badgeBgColor;
  final Color itemNameColor;
  final Color prePriceColor;
  final Color priceColor;
  final Color blurColor;
  final Color ratingColor;

  ShadowShopCard({
    this.onTap,
    @required this.image,
    this.badge,
    this.badgeAlignment,
    this.badgeColor,
    this.itemName,
    this.prePrice,
    this.price,
    this.badgeBgColor,
    this.itemNameColor,
    this.prePriceColor,
    this.priceColor,
    this.blurColor,
    @required this.height,
    this.rating,
    this.ratingColor,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Card(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: this.height,
                child: Image(
                  image: this.image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [
                      (this.blurColor != null) ? this.blurColor : Colors.black,
                      Colors.transparent.withOpacity(0.0)
                    ],
                    begin: new FractionalOffset(0.5, 1.0),
                    end: new FractionalOffset(0.5, 0.0),
                    stops: [0.0, 0.5],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Container(
                      child: Text(
                        this.itemName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
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
                                          ? this.prePrice
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
                                      : Colors.white,
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
                                      : Colors.orange[400],
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
              (this.badge != null)
                  ? Container(
                      alignment: (this.badgeAlignment != null)
                          ? this.badgeAlignment
                          : Alignment.topRight,
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
                                  ? this.badgeBgColor
                                  : Colors.white),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
