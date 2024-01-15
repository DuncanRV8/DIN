import 'package:co3_live/presentation/widgets/msg_field_box.dart';
import 'package:co3_live/presentation/widgets/my_msg_bubble.dart';
import 'package:co3_live/presentation/widgets/my_second_msg_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index){
                return (index % 2 == 0)
                    ?MyMsgBubble()
                    :SecondMsg();
              },
            ),
          ),
          MsgFieldBox()
      ]),
    );
  }
}
