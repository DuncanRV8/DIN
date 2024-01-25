import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem {
  String titulo;
  String subtitulo;
  String ruta;
  IconData icono;

  MenuItem({
    required this.titulo, required this.subtitulo, required this.ruta, required this.icono
  });
}
List<MenuItem> appMenuItem=[
  MenuItem(
    titulo: "Botones",
    subtitulo: "Catagolo de botones",
    ruta: '/buttons',
    icono: Icons.smart_button_outlined),
  MenuItem(
      titulo: "Tarjetas",
      subtitulo: "Catagolo de tarjetas",
      ruta: '/cards',
      icono: Icons.credit_card)
];