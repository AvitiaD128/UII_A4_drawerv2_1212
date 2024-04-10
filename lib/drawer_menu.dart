import 'package:flutter/material.dart';

import 'package:avitiadrawerv2/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Row centrado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Row izquierda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row Derecha',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row Con Espacios',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.cinco)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row Con Espacios Alrededor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.seis)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Con Espacios Uniformemente',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.siete)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Un Solo Cuadro',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
