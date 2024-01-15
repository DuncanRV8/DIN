import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondMsg extends StatelessWidget {
  const SecondMsg({super.key});

  @override
  Widget build(BuildContext context) {
    final esquemaColor = Theme.of(context).colorScheme;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(color: esquemaColor.secondary,
            borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Text('Mensaje de el',
              style: TextStyle(color:  esquemaColor.onSecondaryContainer)),
          ),
        ),
        SizedBox(height: 10),
        _ImageBubble(),
        SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final tam = MediaQuery.of(context).size;
    return ClipRRect(borderRadius: BorderRadius.circular(15),

        child: Image.network("https://yesno.wtf/assets/yes/8-2f93962e2ab24427df8589131da01a4d.gif",
        width: tam.width * 0.4,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, image, loadingProgress) {
          if(loadingProgress == null) return image;
          else {
            return Container(
              height: 150,
                child: Center(child: Text("Cargando imagen...")));
          }}
          ,)
    );
  }
}
