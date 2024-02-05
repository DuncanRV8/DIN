import 'package:flutter/cupertino.dart';

class PagesImageScreen extends StatelessWidget {
  const PagesImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0, // Altura limitada del PageView
      child: PageView.builder(
        itemCount: 12, // Cantidad total de imágenes
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/images/${index + 1}.png', // Ruta de la imagen desde los assets
            fit: BoxFit.contain, // Ajusta la imagen para que cubra el espacio disponible
          );
        },
      ),
    );
  }
}
