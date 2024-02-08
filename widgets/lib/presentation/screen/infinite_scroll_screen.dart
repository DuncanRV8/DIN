import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScroll extends StatefulWidget {

  InfiniteScroll({super.key});

  @override
  State<InfiniteScroll> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  final List<int> listaImagenes = [1,2,3,1,2,3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
          removeTop: true,
        child: Container(
          color: Colors.red,
          child: ListView.builder(
              itemBuilder: (context, index) =>
                FadeInImage(
                    placeholder: AssetImage('assets/images/jar-loading.gif'),
                    image: AssetImage('assets/images/${listaImagenes[index]}.png'))),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new),
        ),
    );
  }
  void meteTresImagenes() {
    listaImagenes.addAll([1,2,3]);
  }
}
