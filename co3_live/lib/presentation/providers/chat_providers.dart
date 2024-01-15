import 'package:flutter/cupertino.dart';

import '../../domain/entities/mensaje.dart';

class ChatProvider extends ChangeNotifier{
  List<Mensaje> listMensajes = [
    Mensaje(texto: 'Hola', autor: Autor.yo)];



  void enviarMensaje(String cadena){
    if(cadena.isNotEmpty) {
      Mensaje nuevoMensaje = Mensaje(texto: cadena, autor: Autor.yo);
      listMensajes.add(nuevoMensaje);
      notifyListeners();
    }
  }
}