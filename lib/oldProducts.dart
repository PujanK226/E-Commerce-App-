import 'package:flutter/material.dart';
import 'product_details.dart';

class OldProducts extends StatefulWidget {
  @override
  _OldProductsState createState() => _OldProductsState();
}

class _OldProductsState extends State<OldProducts> {
  var product_list = [
    {
      "name": "Iphone 11 pro Max",
      "picture": "assets/image/iphone11.png",
      "old_price": 1500,
      "price": 1390,
    },
    {
      "name": "Samsung Galaxy Note-10",
      "picture": "assets/image/Samsung-Galaxy-Note10.jpg",
      "old_price": 900,
      "price": 850,
    },
    {
      "name": "One Plus 9",
      "picture": "assets/image/one+.PNG",
      "old_price": 1000,
      "price": 970,
    },
    {
      "name": "Redmi Note 9 Pro Max",
      "picture": "assets/image/redmi9.PNG",
      "old_price": 150,
      "price": 125,
    },
    {
      "name": "Huawei y7",
      "picture": "assets/image/Huaweiy7.PNG",
      "old_price": 145,
      "price": 115,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero 4"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        //passing value of the products to product details page
                        product_details_name: prod_name,
                        product_details_oldprice: prod_old_price,
                        product_details_price: prod_price,
                        product_details_picture: prod_pricture,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white70,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              prod_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          new Text(
                            "\$${prod_price}",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
