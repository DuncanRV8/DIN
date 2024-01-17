import 'package:co3_live/config/herpers/get_respuesta.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entities/mensaje.dart';

class ChatProvider extends ChangeNotifier{
  final ScrollController chatScrollController = ScrollController();

  List<Mensaje> listMensajes = [
    Mensaje(texto: 'Hola', autor: Autor.yo)];



  void enviarMensaje(String cadena) async{
    if(cadena.isNotEmpty) {
      Mensaje nuevoMensaje = Mensaje(texto: cadena, autor: Autor.yo);
      listMensajes.add(nuevoMensaje);
      notifyListeners();
      scrollDown();
      if(cadena.endsWith('?')){
        Mensaje mensajeOtro = await recibirMensaje();
        listMensajes.add(mensajeOtro);
        notifyListeners();
        scrollDown();
      }
    }
  }
  
 Future<Mensaje> recibirMensaje() async {
   final gResp = GetRespuestas();
   return gResp.getHttp();
 }

  void scrollDown() {
    //chatScrollController.jumpTo(chatScrollController.position.maxScrollExtent);
    chatScrollController.animateTo(chatScrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 400), curve: Curves.ease);
  }
}