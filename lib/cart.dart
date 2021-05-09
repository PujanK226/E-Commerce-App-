import 'package:flutter/material.dart';
import 'cartProducts.dart';
import 'navigation.dart';

class CartPage extends StatefulWidget {
  static const routeName = '/cart';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Cart'),
        elevation: 0.1,
        centerTitle: true,
      ),
      body: new CartScreen(),
      bottomNavigationBar: CustomNav(2),
    );
  }
}
