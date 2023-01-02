import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void onChangeShape() {
    final rdm = Random();

    _width = rdm.nextInt(300).toDouble() + 70;
    _height = rdm.nextInt(300).toDouble() + 70;
    _color =
        Color.fromRGBO(rdm.nextInt(255), rdm.nextInt(255), rdm.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(rdm.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Animated"),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInCubic,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: onChangeShape,
          child: const Icon(
            Icons.play_arrow_outlined,
          ),
        ),
      ),
    );
  }
}
