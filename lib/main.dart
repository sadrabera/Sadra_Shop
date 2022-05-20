import 'package:flutter/material.dart';
import 'package:untitled/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sadra Shop',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title:  Text('Sadra Shop'),
          actions: [
            IconButton(
              icon:  Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body:  MyMainPage(),
      ),
    );
  }
}