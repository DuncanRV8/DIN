import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String,dynamic>> listaParams = [
  {'elevation':0, 'label': 'Elevation 0'},
  {'elevation':1, 'label': 'Elevation 1'},
  {'elevation':2, 'label': 'Elevation 2'},
  {'elevation':3, 'label': 'Elevation 3'},
  {'elevation':4, 'label': 'Elevation 4'},
  {'elevation':5, 'label': 'Elevation 5'},
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
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
    return
        CustomCard();
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.esquemaColores,
  });

  final ColorScheme esquemaColores;

  @override
  Widget build(BuildContext context) {
    final listaCards = [];
    for (var element in listaParams) {
      final Card tarjeta =

      Card(
        color: esquemaColores.primaryContainer,
        elevation: element['elevation'],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,5,10,10),
          child: Text(element['label']),
        ),
      );
    listaCards.add(tarjeta);
    }
    return listaCards;
  }
}
