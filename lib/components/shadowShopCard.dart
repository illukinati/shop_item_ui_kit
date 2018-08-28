import 'package:flutter/material.dart';

class ShadowShopCard extends StatelessWidget {
  final Function onTap;
  final ImageProvider image; 

  ShadowShopCard({
    this.onTap,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 330.0,
                child: Image(
                  image: NetworkImage(
                      "https://i2-prod.mirror.co.uk/incoming/article11479196.ece/ALTERNATES/s615/KitKat-trademark-court-case.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [Colors.black, Colors.transparent.withOpacity(0.0)],
                    begin: new FractionalOffset(0.5, 1.0),
                    end: new FractionalOffset(0.5, 0.0),
                    stops: [0.0, 0.5],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 0.0),
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue),
                            alignment: Alignment.center,
                            child: Text(
                              '-15%',
                              style: TextStyle(
                                  color: Colors.white),
                            ),
                          )
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Container(
                      child: Text(
                        'Kitkat Original',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '¥ 150',
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            TextSpan(
                              text: " " + '¥ 120',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
