import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var Products_on_the_cart = [
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
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return singleClassProduct(
            cart_details_name: Products_on_the_cart[index]["name"],
            cart_color: Products_on_the_cart[index]["color"],
            cart_quantity: Products_on_the_cart[index]["quantity"],
            cart_details_picture: Products_on_the_cart[index]["picture"],
            cart_details_price: Products_on_the_cart[index]["price"],
            cart_storage: Products_on_the_cart[index]["storage"],
          );
        });
  }
}

class singleClassProduct extends StatelessWidget {
  final cart_details_name;
  final cart_details_price;
  final cart_details_picture;
  final cart_storage;
  final cart_color;
  final cart_quantity;

  singleClassProduct(
      {this.cart_details_name,
      this.cart_color,
      this.cart_details_picture,
      this.cart_details_price,
      this.cart_quantity,
      this.cart_storage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          cart_details_picture,
          width: 50.0,
          height: 50.0,
        ),
        title: new Text(cart_details_name),
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
                    cart_storage,
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
                    cart_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_details_price}",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
