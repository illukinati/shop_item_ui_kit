# Flutter Shop Item Builder Kit

These components make you easier to build a shop card items.
You don't need to build from scratch about gridview with DYNAMIC height.

## Screenshots And Usage
![](./ss/ss1.png)

I make 3 different card that you can use easily, `easyShopCard`, `shadowShopCard`, and `circleShopCard`.
And put everything in 1 builder called `shopBuilder`.

```
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
          ],
        ),
      ),
```
## IMPORTANT NOTES
> Height in `shopBuilder` and height in every card MUST BE SAME


Rating bar by Rémi Rousselet, I found it in
https://stackoverflow.com/questions/46637566/how-to-create-rating-star-bar-properly
