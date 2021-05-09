import 'package:flutter/material.dart';
import 'favoriteslist.dart';
import 'navigation.dart';

class FavPage extends StatefulWidget {
  static const routeName = '/favorites';
  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Favorite'),
        elevation: 0.1,
        centerTitle: true,

        // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
      body: new FavScreen(),

      // bottomNavigationBar:
      bottomNavigationBar: CustomNav(3),
    );
  }
}
