import 'package:avitiadrawerv2/movies.dart';
import 'package:avitiadrawerv2/profile.dart';
import 'package:flutter/material.dart';
import 'package:avitiadrawerv2/cinco.dart';
import 'package:avitiadrawerv2/seis.dart';
import 'package:avitiadrawerv2/siete.dart';

import 'contact.dart';
import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String profile = Profile.routeName;
  static const String movies = Movies.routeName;
  static const String contacts = Contact.routeName;
  static const String cinco = Cinco.routeName;
  static const String seis = Seis.routeName;
  static const String siete = Siete.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        profile: (context) => Profile(),
        movies: (context) => Movies(),
        contacts: (context) => Contact(),
        cinco: (context) => Cinco(),
        seis: (context) => Seis(),
        siete: (context) => Siete(),
      },
      home: Inicio(),
    );
  }
}
