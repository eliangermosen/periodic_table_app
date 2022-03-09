import 'package:flutter/material.dart';
import 'package:tabla_periodica/pages/about_page.dart';
import 'package:tabla_periodica/pages/home_page.dart';
import 'package:tabla_periodica/pages/info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Periodic Table',
      // home: HomePage(),
      initialRoute: HomePage.routerName,
      routes: {
        HomePage.routerName: (context) => HomePage(),
        InfoPage.routerName: (context) => InfoPage(),
        AboutPage.routerName: (context) => const AboutPage()
      },
    );
  }
}
