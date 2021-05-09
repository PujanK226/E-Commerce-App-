import 'package:flutter/material.dart';

class FavScreen extends StatefulWidget {
  @override
  _FavScreenState createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  var Products_on_the_fav = [
    {
      "name": "Iphone 12 pro Max",
      "picture": "assets/image/iphone12.png",
      "price": 1890,
      "storage": "250 GB",
      "color": "Blue",
      "quantity": "1",
    },
    {
      "name": "Redmi Note 9 Pro Max",
      "picture": "assets/image/redmi9.PNG",
      "price": 125,
      "storage": "250 GB",
      "color": "Golden",
      "quantity": "1",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_fav.length,
        itemBuilder: (context, index) {
          return singleClassProduct(
            fav_details_name: Products_on_the_fav[index]["name"],
            fav_color: Products_on_the_fav[index]["color"],
            fav_quantity: Products_on_the_fav[index]["quantity"],
            fav_details_picture: Products_on_the_fav[index]["picture"],
            fav_details_price: Products_on_the_fav[index]["price"],
            fav_storage: Products_on_the_fav[index]["storage"],
          );
        });
  }
}

class singleClassProduct extends StatelessWidget {
  final fav_details_name;
  final fav_details_price;
  final fav_details_picture;
  final fav_storage;
  final fav_color;
  final fav_quantity;

  singleClassProduct(
      {this.fav_details_name,
      this.fav_color,
      this.fav_details_picture,
      this.fav_details_price,
      this.fav_quantity,
      this.fav_storage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          fav_details_picture,
          width: 50.0,
          height: 50.0,
        ),
        title: new Text(fav_details_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text("Storage:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    fav_storage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 4.0),
                  child: new Text(
                    "Color:",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    fav_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${fav_details_price}",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
