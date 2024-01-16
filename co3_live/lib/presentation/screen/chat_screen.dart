import 'package:co3_live/presentation/providers/chat_providers.dart';
import 'package:co3_live/presentation/widgets/msg_field_box.dart';
import 'package:co3_live/presentation/widgets/my_msg_bubble.dart';
import 'package:co3_live/presentation/widgets/my_second_msg_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/entities/mensaje.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Consumer<ChatProvider>(
        builder: (BuildContext context, ChatProvider value, Widget? child) {
          return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(
              child: Consumer<ChatProvider>(
                builder: (BuildContext context, ChatProvider cProvider, Widget? child) {
                  return ListView.builder(
                    controller: cProvider.chatScrollController,
                    itemCount: cProvider.listMensajes.length,
                    itemBuilder: (BuildContext context, int index){
                      Mensaje msg = cProvider.listMensajes[index];
                      return(msg.autor == Autor.yo)
                          ?MyMsgBubble(msg: msg)
                          : SecondMsg();
                    },
                    /*itemCount: 50,
                    itemBuilder: (context, index){
                      return (index % 2 == 0)
                          ? MyMsgBubble()
                          : SecondMsg();
                    },*/
                  );
                },
              ),
            ),
            MsgFieldBox(onValue: (cadena) => cProvider.enviarMensaje(cadena),)
          ]);
        },
      ),
    );
  }
}
