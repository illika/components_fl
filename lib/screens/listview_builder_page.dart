import 'package:flutter/material.dart';

class ListviewBuilderPage extends StatefulWidget {
  const ListviewBuilderPage({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderPage> createState() => _ListviewBuilderPageState();
}

class _ListviewBuilderPageState extends State<ListviewBuilderPage> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      debugPrint(
          "${_scrollController.position.pixels} - ${_scrollController.position.maxScrollExtent}");
      if (_scrollController.position.pixels + 500 >=
          _scrollController.position.maxScrollExtent) {
        add10();
      }
    });
  }

  void add10() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          itemCount: imagesId.length,
          itemBuilder: (_, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: const AssetImage("jar-loading.gif"),
              image: NetworkImage(
                  "https://picsum.photos/500/300?random=${imagesId[index]}"),
            );
          },
        ),
      ),
    );
  }
}
