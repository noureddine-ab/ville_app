import 'package:flutter/material.dart';
import 'home_page.dart';
import 'add_data_page.dart';
import 'end_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ville App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/add': (context) => AddDataPage(),
        '/end': (context) => EndPage(),
      },
    );
  }
}