import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tabla_periodica/model/periodic_table.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key? key}) : super(key: key);

  static const routerName = '/info';

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Elements;
    return Scaffold(
      appBar: AppBar(title: Text(args.name)),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: [
            // Text('data. $args.'),
            Text(
              args.name,
              style:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              args.summary,
              style: const TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Characteristics:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Atomic Number: ' + args.number.toString(),
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Symbol: ' + args.symbol,
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Atomic Mass: ' + args.atomicMass.toString(),
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Category: ' + args.category,
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Discovered By: ' + args.discoveredBy,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
