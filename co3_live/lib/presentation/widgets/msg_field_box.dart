import 'package:co3_live/presentation/providers/chat_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MsgFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MsgFieldBox({super.key,required this.onValue});

  @override
  Widget build(BuildContext context) {
    final ChatProvider cProvider = context.watch();
    final bordeCaja = OutlineInputBorder(
        borderSide:BorderSide(color:Colors.red),
        borderRadius: BorderRadius.circular(25));
    final textController = TextEditingController();
    final focusNode = FocusNode();
    //return Text('vida loca', style: TextStyle(fontSize: 90));
    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      onFieldSubmitted: (value) {
        final cadena = textController.value.text;
        //onValue(cadena);
        cProvider.enviarMensaje(cadena);
        //print(cadena);
        textController.clear();
        focusNode.requestFocus();
      },
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      decoration: InputDecoration(
        hintText: 'Terminar con "?" para respuestas',
        filled: true,
        enabledBorder: bordeCaja,
          focusedBorder: bordeCaja,
        //focusedBorder: ,
        suffixIcon: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            final cadena = textController.value.text;
            cProvider.enviarMensaje(cadena);
            //onValue(cadena);
            //print(cadena);
            textController.clear();
          },
        )),
    );
  }
}
