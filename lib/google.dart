import 'package:flutter/material.dart';
import 'UserChoice.dart';
import 'register.dart';

class GoogleInt extends StatefulWidget {
  static const routeName = '/google';

  @override
  _GoogleIntState createState() => _GoogleIntState();
}

class _GoogleIntState extends State<GoogleInt> {
  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.white)),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.grey[200],
                padding: EdgeInsets.all(10),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "\nAllow Ghar to access this device’s "
                          "                location?                        \n\n",
                          style: TextStyle(fontSize: 16),
                        ),
                        Divider(),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/UserChoice');
                          },
                          child: ListTile(
                            title: Text(
                              'Allow All the time',
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/UserChoice');
                          },
                          child: ListTile(
                            title: Text(
                              'Allow only while using the app',
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              'Deny',
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
