import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'qrcode.dart';
import 'cart.dart';
import 'favorites.dart';
import 'profile.dart';
import 'main.dart';

class CustomNav extends StatefulWidget {
  int selectedItemIndex;
  CustomNav(this.selectedItemIndex);
  @override
  _CustomNavState createState() => _CustomNavState(selectedItemIndex);
}

class _CustomNavState extends State<CustomNav> {
  int _selectedItemIndex;
  _CustomNavState(this._selectedItemIndex);
  List<String> _screens = <String>[
    '/homeScreen',
    '/qrcode',
    '/cart',
    '/favorites',
    '/Setting'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          buildNavBarItem(Icons.home, 'Home', 0),
          buildNavBarItem(Icons.qr_code_scanner, 'Scan', 1),
          buildNavBarItem(Icons.shopping_bag, 'My Cart', 2),
          buildNavBarItem(Icons.favorite, 'Favorite', 3),
          buildNavBarItem(Icons.settings, 'Settings', 4),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, String iconLabel, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(_screens[index]);
            _selectedItemIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.only(top: 10),
          height: 60,
          width: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                blurRadius: 4,
                color: Colors.grey.withOpacity(
                  0.4,
                )),
          ]),
          child: Column(
            children: [
              Container(
                child: Icon(
                  icon,
                ),
              ),
              Container(
                child: Text(
                  iconLabel,
                ),
              ),
            ],
          ),
        ));
  }
}
