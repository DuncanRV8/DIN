import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum Transporte {
  coche,
  avion,
  barco,
  bicicleta
}

class UIControlScreen extends StatefulWidget {
  const UIControlScreen({super.key});

  @override
  State<UIControlScreen> createState() => _UIControlScreenState();
}

class _UIControlScreenState extends State<UIControlScreen> {
  bool _opcion1 = true;
  Transporte _transporte = Transporte.coche;
  bool _check1 = false;
  bool _check2 = false;
  bool _check3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ui Controls'),
      ),
      body: _UIControllView(),
    );
  }

  ListView _UIControllView() {
    return ListView(
      children: [
        Switch(value: true, onChanged: (value) {}),
        SwitchListTile(
            title: Text('Opcion 1'),
            subtitle: Text('Descrición de la opción 1'),
            value: _opcion1,
            onChanged: (value) {
              _opcion1=!_opcion1;
              setState(() {});

        }),
        ExpansionTile(
          initiallyExpanded: true,
          title: Text('Seleccion de transporte'),
          children: [
            RadioListTile(
                title: Text('Coche'),
                value: Transporte.coche,
                groupValue: _transporte,
                onChanged: (value) {
                  _transporte = Transporte.coche;
                  setState(() {});
                }),
            RadioListTile(
                title: Text('Avion'),
                value: Transporte.avion,
                groupValue: _transporte,
                onChanged: (value) {
                  _transporte = Transporte.avion;
                  setState(() {});
                }),
            RadioListTile(
                title: Text('Barco'),
                value: Transporte.barco,
                groupValue: _transporte,
                onChanged: (value) {
                  _transporte = Transporte.barco;
                  setState(() {});
                }),
            RadioListTile(
                title: Text('Bicicleta'),
                value: Transporte.bicicleta,
                groupValue: _transporte,
                onChanged: (value) {
                  _transporte = Transporte.bicicleta;
                  setState(() {});
                }),
        ],),
        Checkbox(
            value: true,
            onChanged: (value) {

            }),
        ExpansionTile(
            title: Text('Selecciona'),
          children: [
            CheckboxListTile(
                title: Text('Quiere desayuno?'),
                value: _check1,
                onChanged: (value) {
                  _check1 =! _check1;
                  setState(() {});
                }),
            CheckboxListTile(
                title: Text('Quiere cantar?'),
                value: _check2,
                onChanged: (value) {
                  _check2 =! _check2;
                  setState(() {});
                }),
            CheckboxListTile(
                title: Text('Quiere bailar?'),
                value: _check3,
                onChanged: (value) {
                  _check3 =! _check3;
                  setState(() {});
                }),
        ],)
      ],
    );
  }
}
