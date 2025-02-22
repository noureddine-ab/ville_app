import 'package:flutter/material.dart';
import 'add_data_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> villes = ["Paris", "Lyon", "Marseille"]; // Exemple de données

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liste des Villes')),
      body: ListView.builder(
        itemCount: villes.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(villes[index]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
