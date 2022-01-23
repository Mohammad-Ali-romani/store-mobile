import 'package:flutter/material.dart';
import 'package:newpro/pages/categories.dart';
import 'package:newpro/pages/category.dart';
import 'package:newpro/pages/product.dart';
import './pages/home.dart';
import './pages/about.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo',),
      title: "app",
      home: Home(),
      routes: {
        'home': (context) => (Home()),
        'about': (context) => (About()),
        'categories': (context) => (Categories()),
        'category': (context) => (Category()),
        'product': (context) => (Product())
      },
    );
  }
}
