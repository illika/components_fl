import 'package:flutter/material.dart';

class ListviewBuilderPage extends StatelessWidget {
  const ListviewBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, int index) {
            return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage("jar-loading.gif"),
                image: NetworkImage(
                    "https://picsum.photos/500/300?random=${index + 1}"));
          },
        ),
      ),
    );
  }
}
