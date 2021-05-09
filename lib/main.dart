import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'Setting.dart';
import 'cart.dart';
import 'favorites.dart';
import 'google.dart';
import 'homeScreen.dart';
import 'login.dart';
import 'home_screen.dart';
import 'myorder.dart';
import 'navigation.dart';
import 'profile.dart';
import 'register.dart';
// ignore: unused_import
import 'UserChoice.dart';

import 'qrcode.dart';

import 'navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Home Page',
      // theme: ThemeData(
      //   primaryColor: Colors.red,
      // ),
      // home: LoginScreen(),
      // home: RegisterScreen(),
      // home: userChoice(),
      // home: GoogleInt(),
      home: HomeSc(),
      // home: HomePage(),
      // home: ProfilePage(),
      // home: SettingsPage(),
      // home: ProPage(),

      routes: {
        RegisterScreen.routeName: (ctx) => RegisterScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        userChoice.routeName: (ctx) => userChoice(),
        HomePage.routeName: (ctx) => HomePage(),
        // ignore: equal_keys_in_map
        GoogleInt.routeName: (ctx) => GoogleInt(),
        HomeSc.routeName: (ctx) => HomeSc(),

        // proPage.routeName: (ctx) => proPage(),
        qrcodeScan.routeName: (ctx) => qrcodeScan(),
        ProfilePage.routeName: (ctx) => ProfilePage(),
        SettingsPage.routeName: (ctx) => SettingsPage(),
        // contactPage.routeName: (ctx) => contactPage(),
        CartPage.routeName: (ctx) => CartPage(),
        FavPage.routeName: (ctx) => FavPage(),
        OrderPage.routeName: (ctx) => OrderPage(),
        // Home.routeName: (ctx) => Home(),
      },
    );
  }
}
