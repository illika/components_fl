import 'package:flutter/material.dart';

class Listview2Page extends StatelessWidget {
  const Listview2Page({Key? key}) : super(key: key);

  final List<String> options = const [
    "Megaman",
    "Spiderman",
    "Marvel",
    "Señor de los Anillos",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ListView 2"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(options[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
