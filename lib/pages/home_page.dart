import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabla_periodica/model/periodic_table.dart';
import 'package:tabla_periodica/pages/about_page.dart';
import 'package:tabla_periodica/pages/info_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  static const routerName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Elements> _tableElements = [];

  _HomePageState() {
    loadingJSON();
  }

  void loadingJSON() {
    rootBundle
        .loadString("assets/periodic_table.json")
        .then((value) => {_tableElementState(value)});
  }

  void _tableElementState(String json) {
    Map<String, dynamic> j = jsonDecode(json);
    var e = PeriodicTable.fromJson(j);
    setState(() {
      _tableElements = e.elements;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Periodic Table Home"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AboutPage.routerName);
              },
              icon: const Icon(Icons.person),
              tooltip: "About Me",
            )
          ],
        ),
        body: ListView.builder(
            itemCount: _tableElements.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Text(
                    _tableElements[index].symbol,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  title: Text(_tableElements[index].name),
                  subtitle: Text(_tableElements[index].number.toString() +
                      ' ' +
                      _tableElements[index].category),
                  onTap: () => {
                    Navigator.pushNamed(context, InfoPage.routerName,
                        arguments: _tableElements[index])
                  },
                ),
              );
            }));
  }
}
