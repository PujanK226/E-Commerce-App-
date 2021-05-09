import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  var Products_on_the_order = [
    {
      "name": "Iphone 12 pro Max",
      "picture": "assets/image/iphone12.png",
      "price": 1890,
      "storage": "250 GB",
      "color": "Blue",
      "quantity": "1",
    },
    {
      "name": "Samsung Galaxy Note-10 ",
      "picture": "assets/image/one+.PNG",
      "price": 900,
      "storage": "128 GB",
      "color": "Black",
      "quantity": "1",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_order.length,
        itemBuilder: (context, index) {
          return singleClassProduct(
            order_details_name: Products_on_the_order[index]["name"],
            order_color: Products_on_the_order[index]["color"],
            order_quantity: Products_on_the_order[index]["quantity"],
            order_details_picture: Products_on_the_order[index]["picture"],
            order_details_price: Products_on_the_order[index]["price"],
            order_storage: Products_on_the_order[index]["storage"],
          );
        });
  }
}

class singleClassProduct extends StatelessWidget {
  final order_details_name;
  final order_details_price;
  final order_details_picture;
  final order_storage;
  final order_color;
  final order_quantity;

  singleClassProduct(
      {this.order_details_name,
      this.order_color,
      this.order_details_picture,
      this.order_details_price,
      this.order_quantity,
      this.order_storage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          order_details_picture,
          width: 50.0,
          height: 50.0,
        ),
        title: new Text(order_details_name),
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
                    order_storage,
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
                    order_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${order_details_price}",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
