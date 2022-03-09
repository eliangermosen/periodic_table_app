import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  static const routerName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
        // actions: [],
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20.0),
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/77473889?v=4"),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            child: const Text(
              "Nombres:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "Elian Manuel",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "Apellidos:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "Toribio Germosen",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "Correo Electronico:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "elianmtoribio@gmail.com",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "Matricula:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "2019-8498",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            child: const Text(
              "Fecha y Hora Actual:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            child: Text(
              DateTime.now().toString(),
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      )),
    );
  }
}
