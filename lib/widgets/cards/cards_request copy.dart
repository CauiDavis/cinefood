import 'package:flutter/material.dart';

class Request {
  final String dataRequest;
  final List<String> products;
  final String statusRequest;

  Request({
    required this.dataRequest,
    required this.products,
    required this.statusRequest,
  });
}

class CardsRequest extends StatelessWidget {
  final Request request;

  CardsRequest({required this.request});

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
              'Data do Pedido: ${request.dataRequest}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Produtos:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: request.products.map((product) {
                return Text('- $product');
              }).toList(),
            ),
            SizedBox(height: 8),
            Text(
              'Status do Pedido: ${request.statusRequest}',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
