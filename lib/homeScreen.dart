import 'dart:ui';
import 'package:flutter/material.dart';
import 'oldProducts.dart';
import 'products.dart';

import 'cart.dart';
import 'qrcode.dart';
import 'profile.dart';
import 'cart.dart';
import 'navigation.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homeScreen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<String> imageUrl = [
    'assets/image/one.jpeg',
    'assets/image/two.jpg',
    'assets/image/three.jpg',
    'assets/image/four.jpg'
  ];
  final List<String> imageUrl1 = [
    'assets/image/trending-1.PNG',
    'assets/image/trending-2.PNG',
    'assets/image/trending-3.PNG',
    'assets/image/trending-4.PNG',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Mobile Ghar'),
        elevation: 0.1,
        centerTitle: true,
        actions: <Widget>[
          // ignore: missing_required_param
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/cart');
            },
            child: new IconButton(
              icon: Icon(Icons.shopping_bag),
            ),
          ),
          new IconButton(
              icon: Icon(Icons.qr_code_scanner),
              onPressed: () {
                Navigator.of(context).pushNamed('/qrcode');
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text(
                'Pujan Khatiwada',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text('Pujankhatiwada26@gmail.com',
                  style: TextStyle(color: Colors.black)),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Image.asset('assets/image/pujan.jpg'),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/homeScreen');
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/myorder');
              },
              child: ListTile(
                title: Text('My order'),
                leading: Icon(Icons.phone),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/cart');
              },
              child: ListTile(
                title: Text('Cart'),
                leading: Icon(Icons.shopping_bag),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/favorites');
              },
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
              child: ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        color: Color(0xFFF2F3F5),
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              color: Colors.red,
              padding: EdgeInsets.only(
                left: 5,
                right: 5,
                top: 8,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    // contentPadding: EdgeInsets.symmetric(vertical: 5),
                    hintText: 'Find Mobile',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[500],
                    ),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 180,
              child: Image.asset('assets/image/gimbal.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 10, top: 5, bottom: 25),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 47,
                          child: Image.asset('assets/image/apple1.jpg'),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            'iPhone',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey[200],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 47,
                          child: Image.asset('assets/image/samsung.png'),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            'Samsung',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey[200],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 47,
                          child: Image.asset('assets/image/oneplus.png'),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            'One Plus',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey[200],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 47,
                          child: Image.asset('assets/image/Xiaomi.png'),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            'Xiaomi',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey[200],
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey[200],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 47,
                          child: Image.asset('assets/image/huawei.png'),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            'Huawei',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.grey[200],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrl.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                    height: 135,
                    width: 250,
                    child: Image.asset(
                      imageUrl[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text(
                'Recent Product',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 240.0,
              child: Products(),
            ),
            Divider(),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text(
                'Trending News Section',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrl1.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                    height: 135,
                    width: 250,
                    child: Image.asset(
                      imageUrl1[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Divider(),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text(
                'Featured Product',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 260.0,
              child: OldProducts(),
            ),
          ],
        ),
      )),
      bottomNavigationBar: CustomNav(0),
    );
  }

  // ignore: unused_local_variable
}
