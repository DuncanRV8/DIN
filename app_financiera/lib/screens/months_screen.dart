import 'package:flutter/cupertino.dart';

class MonthScreen extends StatelessWidget {
   MonthScreen({Key? key}) : super(key: key);

  final List<String> month = [
    'Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio',
    'Agosto','Septiembre','Octubre','Noviembre','Diciembre'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 50.0,
          child: PageView.builder(
            itemCount: month.length,
            itemBuilder: (context, index) {
              return Center(
                child: Text(
                  month[index],
                  style: TextStyle(fontSize: 24.0),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
