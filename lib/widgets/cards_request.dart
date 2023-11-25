import 'package:flutter/material.dart';

class Pedido {
  final String dataPedido;
  final List<String> produtos;
  final String statusPedido;

  Pedido({
    required this.dataPedido,
    required this.produtos,
    required this.statusPedido,
  });
}

class CardsRequest extends StatelessWidget {
  final Pedido pedido;

  CardsRequest({required this.pedido});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
        side: BorderSide(
          color: const Color(0xFFFEDE6B),
          width: 1.0,
        ),
      ),
      color: Colors.transparent,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data do Pedido: ${pedido.dataPedido}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Produtos:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pedido.produtos.map((produto) {
                return Text('- $produto');
              }).toList(),
            ),
            SizedBox(height: 8),
            Text(
              'Status do Pedido: ${pedido.statusPedido}',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
