import 'package:flutter/material.dart';

import 'package:fl_componentes/widgtes/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("CardPage"),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCardType1(),
            ],
          )),
    );
  }
}
