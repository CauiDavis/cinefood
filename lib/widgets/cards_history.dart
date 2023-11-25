import 'package:flutter/material.dart';

class History {
  final String dataHistory;
  final List<String> products;

  History({
    required this.dataHistory,
    required this.products,
  });
}

class CardsHistory extends StatelessWidget {
  final History history;

  CardsHistory({required this.history});

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
              'Data: ${history.dataHistory}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Produtos:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: history.products.map((product) {
                return Text('- $product');
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
