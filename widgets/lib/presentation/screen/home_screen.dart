import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/config/menu/menu_item.dart';
import 'package:widgets/presentation/screen/button_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Catalogo de Widgets'),
    ),
    body: _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: appMenuItem.length,
        itemBuilder: (BuildContext context, int index) {
          return _CustomList(menuItem: appMenuItem[index],);
        },);
  }
}

class _CustomList extends StatelessWidget {
  final MenuItem menuItem;
  const _CustomList({
    super.key,
    required this.menuItem
  });


  @override
  Widget build(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    return ListTile(
      tileColor: esquemaColores.secondaryContainer,
      title: Text(menuItem.titulo),
      subtitle: Text(menuItem.subtitulo),
      leading: Icon(menuItem.icono, color: esquemaColores.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: esquemaColores.primary),
      onTap: () {
        //Navigator de forma 3
        context.push(menuItem.ruta);

        //Navigator forma 2
          //Navigator.pushNamed(context, menuItem.ruta);

         /*
         //Navigator forma 1
         Navigator.of(context).push(
           MaterialPageRoute(builder: (context) => ButtonScreen()

           ));
          */
      },
    );
  }
}
