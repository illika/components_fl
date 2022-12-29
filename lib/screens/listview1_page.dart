import 'package:flutter/material.dart';

class Listview1Page extends StatelessWidget {
  const Listview1Page({Key? key}) : super(key: key);

  final List<String> options = const [
    "Megaman",
    "Spiderman",
    "Marvel",
    "Señor de los Anillos",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_right_outlined),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
