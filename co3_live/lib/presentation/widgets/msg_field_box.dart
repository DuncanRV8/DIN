import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgFieldBox extends StatelessWidget {
  const MsgFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final bordeCaja = OutlineInputBorder(
        borderSide:BorderSide(color:Colors.red),
        borderRadius: BorderRadius.circular(25));
    //return Text('vida loca', style: TextStyle(fontSize: 90));
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        enabledBorder: bordeCaja,
          focusedBorder: bordeCaja,
        //focusedBorder: ,
        suffixIcon: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {},
        )),
    );
  }
}
