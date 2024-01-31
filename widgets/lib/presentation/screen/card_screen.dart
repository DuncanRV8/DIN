import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String,dynamic>> listaParams = [
  {'elevation':0.0, 'label': 'Elevation 0'},
  {'elevation':1.0, 'label': 'Elevation 1'},
  {'elevation':2.0, 'label': 'Elevation 2'},
  {'elevation':3.0, 'label': 'Elevation 3'},
  {'elevation':4.0, 'label': 'Elevation 4'},
  {'elevation':5.0, 'label': 'Elevation 5'},
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pantalla de tarjetas")),
        body: _CardsView());
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    return CustomCard();
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    List<Widget> otraLista = [];
    otraLista.addAll(getListaCardTipo1(context));
    otraLista.addAll(getListaCardTipo2(context));
    otraLista.addAll(getListaCardTipo3(context));
    otraLista.addAll(getListaCardTipo4(context));
    otraLista.add(SizedBox(height: 20));
    return SingleChildScrollView(child: Column(children: otraLista));
  }

  List<Card> getListaCardTipo1(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    final List<Card> listaCards = [];
    for (var element in listaParams) {
      final Card tarjeta = Card(
        color: esquemaColores.primaryContainer,
        elevation: element['elevation'],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,5,10,10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)
              )),
              Align(
                alignment: Alignment.bottomLeft,
                  child: Text(element['label'])),
            ],
          ),
        ),
      );
    listaCards.add(tarjeta);
    }
    return listaCards;
  }
  List<Card> getListaCardTipo2(BuildContext context) {
    final esquemaColores = Theme
        .of(context)
        .colorScheme;
    final List<Card> listaCards = [];
    for (var element in listaParams) {
      final Card tarjeta = Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: esquemaColores.outline)),
        color: esquemaColores.primaryContainer,
        elevation: element['elevation'],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.more_vert_outlined)
                  )),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(element['label'] + ' - Outline')),
            ],
          ),
        ),
      );
      listaCards.add(tarjeta);
    }
    return listaCards;
  }
  List<Card> getListaCardTipo3(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    final List<Card> listaCards = [];
    for (var element in listaParams) {
      final Card tarjeta = Card(
        color: esquemaColores.primaryContainer,
        elevation: element['elevation'],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,5,10,10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)
                  )),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(element['label'] + ' - Filled',
                    style: TextStyle(color: esquemaColores.onPrimary))),
            ],
          ),
        ),
      );
      listaCards.add(tarjeta);
    }
    return listaCards;
  }
  List<Card> getListaCardTipo4(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    final List<Card> listaCards = [];
    for (var element in listaParams) {
      final double elev = element['elevation'];
      final Card tarjeta = Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: elev,
        child: Stack(
          children: [
            Image.network('https://picsum.photos/id/${50 + elev.toInt()}/600/300',
            height: 350,
            fit: BoxFit.cover),
            Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))),

                  child: IconButton(onPressed: () {},
                      icon: Icon(Icons.more_vert_outlined,)
                  ),
                )),
          ],
        ),
      );
      listaCards.add(tarjeta);
    }
    return listaCards;
  }
}
