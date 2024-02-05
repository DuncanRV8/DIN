import 'package:flutter/material.dart';

class LabelScreen extends StatelessWidget {
  final List<Map<String, dynamic>> gastosAnuales;

  const LabelScreen({Key? key, required this.gastosAnuales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtener los datos del mes de enero
    Map<String, dynamic>? eneroData = gastosAnuales.firstWhere((gasto) => gasto['mes'] == 'enero');

    if (eneroData == null) {
      return Container(
        child: Center(
          child: Text('No se encontraron datos para el mes de enero'),
        ),
      );
    }

    // Calcular los gastos totales de enero
    final totalGastos = eneroData['compras'] + eneroData['bebida'] + eneroData['comida'] + eneroData['ropa'] + eneroData['facturas'];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '${totalGastos.toString()}\€',
              style: TextStyle(
                fontSize: 23.0,
              ),
            ),
          ),
          Center(
            child: Text(
              'Gastos Totales',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.0),

        ],
      ),
    );
  }
}
