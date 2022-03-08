import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabla_periodica/model/periodic_table.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Elements> _elements = [];

  _HomePageState() {
    loadJSON();
  }

  void loadJSON() {
    rootBundle
        .loadString("assets/periodic_table.json")
        .then((value) => {_elementState(value)});
  }

  void _elementState(String json) {
    Map<String, dynamic> j = jsonDecode(json);
    var e = PeriodicTable.fromJson(j);
    setState(() {
      _elements = e.elements;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Periodic Table Home"),
        ),
        body: ListView.builder(
            itemCount: _elements.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(_elements[index].name),
                  subtitle: Text(_elements[index].symbol),
                ),
              );
            }));
  }
}
