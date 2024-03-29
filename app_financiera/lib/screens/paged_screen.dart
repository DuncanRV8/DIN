import 'package:flutter/material.dart';

class PagedScreen extends StatelessWidget {
  final List<Map<String, dynamic>> gastosAnuales;

  const PagedScreen({Key? key, required this.gastosAnuales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? eneroData = gastosAnuales.firstWhere((gasto) => gasto['mes'] == 'enero');

    final compras = eneroData['compras'];
    final bebida = eneroData['bebida'];
    final comida = eneroData['comida'];
    final ropa = eneroData['ropa'];
    final facturas = eneroData['facturas'];
    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      height: 400.0,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            buildExpenseCard(category: 'Compras', amount: compras, icon: Icons.shopping_cart, primaryColor: primaryColor),
            buildExpenseCard(category: 'Bebida', amount: bebida, icon: Icons.local_drink, primaryColor: primaryColor),
            buildExpenseCard(category: 'Comida', amount: comida, icon: Icons.restaurant, primaryColor: primaryColor),
            buildExpenseCard(category: 'Ropa', amount: ropa, icon: Icons.shopping_basket, primaryColor: primaryColor),
            buildExpenseCard(category: 'Facturas', amount: facturas, icon: Icons.receipt, primaryColor: primaryColor),
          ],
        ),
      ),
    );
  }

  Widget buildExpenseCard({required String category, required int amount, required IconData icon, required Color primaryColor}) {
    final totalGastos = gastosAnuales
        .firstWhere((gasto) => gasto['mes'] == 'enero');
    final total = totalGastos['compras'] + totalGastos['bebida'] + totalGastos['comida'] + totalGastos['ropa'] + totalGastos['facturas'];
    final porcentajeGastado = (amount / total) * 100;

    return Card(
      child: ListTile(
        leading: Icon(icon, color: primaryColor),
        title: Text(category),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${porcentajeGastado.toStringAsFixed(0)}% gasto mensual'),
            Text('${amount.toString()}\€'),
          ],
        ),
      ),
    );
  }
}
