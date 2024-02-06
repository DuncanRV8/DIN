import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar y dialogo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context,
                  applicationName: 'Aplicacion en directo',
                    children: [
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                    ],
                  );
                },
                child: Text('Mostrar licencias'),
            ),
            FilledButton.tonal(
                onPressed: () {
                  abreDialogo(context);
                },
                child: Text('Mostrar dialogos'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showCustomSnackBar(context);
          },
          label: Text("Mostrar Snackback"),
        icon: Icon(Icons.remove_red_eye),
      ),
    );
  }


  void abreDialogo(BuildContext context) {
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Estas seguro?'),
            content: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            actions: [
              TextButton(
                onPressed: () {context.pop();},
                child: Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () {context.pop();},
                child: Text('Aceptar'),
              )
            ],
          );
        });
  }


  void showCustomSnackBar(BuildContext context) {
    final snBar = SnackBar(
        action: SnackBarAction(
          label: "OK",
          onPressed: () {},
        ),
        duration: const Duration(seconds: 2),
        content: Text('Soy un Snack'));
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snBar);
  }
}
