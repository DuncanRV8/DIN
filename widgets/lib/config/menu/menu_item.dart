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
      icono: Icons.credit_card),
  MenuItem(
      titulo: "Indicadores de progreso",
      subtitulo: "Lineal y Circular",
      ruta: '/progress',
      icono: Icons.history),
  MenuItem(
      titulo: "SnackBars",
      subtitulo: "snack bar",
      ruta: '/snackbar',
      icono: Icons.panorama_fish_eye_outlined),
  MenuItem(
      titulo: "Animated",
      subtitulo: "animated",
      ruta: '/animated',
      icono: Icons.ac_unit_outlined),
  MenuItem(
      titulo: "Controles de Interfa< de usuario",
      subtitulo: "Switches, radionButtons y checkbox",
      ruta: '/uicontrols',
      icono: Icons.abc),
  MenuItem(
      titulo: "Tutorial de aplicacioens",
      subtitulo: "Tutorial de aplicacioens",
      ruta: '/tutorial',
      icono: Icons.add_alarm_rounded),
  MenuItem(
      titulo: "Scroll infinito y pull to refresh",
      subtitulo: "InfiniteScroll",
      ruta: '/infinite',
      icono: Icons.receipt_long),
];