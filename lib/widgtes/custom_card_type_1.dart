import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.phone_android_outlined,
              color: AppTheme.primary,
            ),
            title: Text("Titulo"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Ok"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
