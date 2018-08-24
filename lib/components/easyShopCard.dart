import 'package:flutter/material.dart';
import 'package:shop_item_ui_kit/components/starRating.dart';

class EasyShopCard extends StatelessWidget {
  final ImageProvider image;
  final String itemName;
  final String price;
  final String prePrice;
  final String badge;
  final String button;
  final Alignment badgeAlignment;
  final double rating;
  final double height;
  final double imageHeight;

  final Color badgeColor;
  final Color badgeBgColor;
  final Color itemNameColor;
  final Color priceColor;
  final Color prePriceColor;
  final Color ratingColor;
  final Color backgroundColor;

  const EasyShopCard(
      {Key key,
      this.itemName,
      this.image,
      this.prePrice,
      this.price,
      this.rating,
      this.badge,
      this.badgeAlignment,
      this.badgeColor,
      this.badgeBgColor,
      this.itemNameColor,
      this.prePriceColor,
      this.priceColor,
      this.backgroundColor,
      this.button,
      this.height,
      this.imageHeight,
      this.ratingColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          (this.backgroundColor != null) ? this.backgroundColor : Colors.white,
      child: Container(
        alignment: Alignment.topCenter,
        height: this.height - ((this.button != null) ? 0.0 : 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
              child: Stack(
                alignment: (this.badgeAlignment != null)
                    ? this.badgeAlignment
                    : Alignment.topRight,
                children: <Widget>[
                  Image(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: this.imageHeight,
                    fit: BoxFit.fill,
                    image: this.image,
                  ),
                  (this.badge != null)
                      ? Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (this.badgeBgColor != null)
                                  ? this.badgeBgColor
                                  : Colors.red),
                          alignment: Alignment.center,
                          child: Text(
                            this.badge,
                            style: TextStyle(
                                color: (this.badgeColor != null)
                                    ? this.badgeColor
                                    : Colors.white),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
              child: Text(
                this.itemName,
                style: TextStyle(
                    color: (this.itemNameColor != null)
                        ? this.itemNameColor
                        : Colors.grey[800]),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: this.prePrice,
                      style: TextStyle(
                        color: (this.prePriceColor != null)
                            ? this.prePriceColor
                            : Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    TextSpan(
                      text: " " + this.price,
                      style: TextStyle(
                          color: (this.priceColor != null)
                              ? this.priceColor
                              : Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: StarRating(
                rating: this.rating,
                color: (this.ratingColor != null)
                    ? this.ratingColor
                    : Colors.orange[400],
                onRatingChanged: (rating) {},
              ),
            ),
            (this.button != null)
                ? Container(
                    height: 30.0,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(this.button),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
