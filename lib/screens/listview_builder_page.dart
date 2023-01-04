import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderPage extends StatefulWidget {
  const ListviewBuilderPage({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderPage> createState() => _ListviewBuilderPageState();
}

class _ListviewBuilderPageState extends State<ListviewBuilderPage> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController _scrollController = ScrollController();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      /*debugPrint(
          "${_scrollController.position.pixels} - ${_scrollController.position.maxScrollExtent}");*/
      if (_scrollController.position.pixels + 500 >=
          _scrollController.position.maxScrollExtent) {
        //add10();
        fetchData();
      }
    });
  }

  void add10() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future fetchData() async {
    if (_isLoading) return;
    _isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add10();
    _isLoading = false;
    setState(() {});

    if (_scrollController.position.pixels + 100 <=
        _scrollController.position.maxScrollExtent) return;

    _scrollController.animateTo(
      _scrollController.position.pixels + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
    );
  }

  Widget _loadingIcon() {
    return Container(
      width: 60,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 200));
    final lastId = imagesId.last;
    imagesId.clear();
    imagesId.add(lastId + 1);
    add10();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
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
            if (_isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: _loadingIcon(),
              ),
          ],
        ),
      ),
    );
  }
}
