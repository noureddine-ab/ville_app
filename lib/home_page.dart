import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> villes = [];

  @override
  void initState() {
    super.initState();
    fetchVilles();
  }

  Future<void> fetchVilles() async {
    final response = await http.get(Uri.parse('http://localhost:9090/cities'));
    if (response.statusCode == 200) {
      setState(() {
        villes = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load villes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liste des Villes')),
      body: ListView.builder(
        itemCount: villes.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(villes[index]['name']));
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
