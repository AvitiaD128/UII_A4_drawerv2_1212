import 'package:avitiadrawerv2/drawer_menu.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row espacio alrededor"),
      ),
      drawer: DrawerMenu(),
      body: Container(
        padding: const EdgeInsets.all(0.0),
        color: Colors.cyanAccent,
        width: 80.0,
        height: 80.0,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
