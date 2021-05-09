import 'package:flutter/material.dart';
import 'myorderlist.dart';
import 'homeScreen.dart';

class OrderPage extends StatefulWidget {
  static const routeName = '/myorder';
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),

        backgroundColor: Colors.red,
        title: Text('My Order'),
        elevation: 0.1,
        centerTitle: true,

        // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
      body: new OrderScreen(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\$240"),
            )),
            Expanded(
              child: new MaterialButton(
                onPressed: () {
                  return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Order Cancel"),
                          content:
                              Text("Are you sure want to cancel the order?"),
                          actions: [
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('/homeScreen');
                                },
                                child: Text("Yes")),
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("No")),
                          ],
                        );
                      });
                },
                child: new Text(
                  "Cancel Order",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
