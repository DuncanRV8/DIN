import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  String titulo;
  String descripcion;
  String url;

  SlideInfo(this.titulo, this.descripcion, this.url);
}

final List<SlideInfo> listaSlideInfo = [
  SlideInfo('Selecciona la comida',
  'askjdhksjafjkashdfgsahkjhfsuikahfkjdshkjdhkjhsdfkdbajkhgsajkjkhkjhkj',
  'assets/images/1.png'),
  SlideInfo('entrega rapida',
      'askjdhksjafjkashdfgsahkjhfsuikahfkjdshkjdhkjhsdfkdbajkhgsajkjkhkjhkj',
      'assets/images/2.png'),
  SlideInfo('Disfruta tu comida',
      'askjdhksjafjkashdfgsahkjhfsuikahfkjdshkjdhkjhsdfkdbajkhgsajkjkhkjhkj',
      'assets/images/3.png'),

];

class _Slide extends StatelessWidget {
  String titulo;
  String descripcion;
  String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(url),
          Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Text(descripcion,style: const TextStyle(fontSize: 20)),

        ],
      ),
    );
  }
  _Slide({required this.titulo, required this.descripcion, required this.url});
}




class ApptutorialScreen extends StatefulWidget {
  const ApptutorialScreen({super.key});

  @override
  State<ApptutorialScreen> createState() => _ApptutorialScreenState();
}

class _ApptutorialScreenState extends State<ApptutorialScreen> {
  final PageController pageViewController = PageController();
  bool isFinal = false;


  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      double posicion = pageViewController.page ?? 0;
      if(posicion >= listaSlideInfo.length - 1.5) {
        isFinal = true;

      }
      else {
        isFinal = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<_Slide> listaSlides =
        listaSlideInfo.map<_Slide>((element) => _Slide(
            titulo: element.titulo,
            descripcion: element.descripcion,
            url: element.url)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('App tutorial'),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: BouncingScrollPhysics(),
            children: listaSlides,
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  context.pop();
                  },
                child: Text('SALTAR'),
            ),
          ),

          (isFinal)
          ?Align(
            alignment: Alignment.bottomRight,
            child: FadeInRight(
              duration: const Duration(seconds: 1),
              child: FilledButton(
                  onPressed: () { context.pop();},
                  child: Text('Comenzar')
              ),
            ),
          )
          :Container(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
}

