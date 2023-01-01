import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Stan Lee",
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.indigo[900],
                child: const Text("SL"),
              ),
            )
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 100,
            backgroundImage:
                NetworkImage("https://i.blogs.es/85aa44/stan-lee/840_560.jpg"),
          ),
        ),
      ),
    );
  }
}
