import 'package:cinefood/core/custom_colors.dart';
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

class CardsRequest extends StatefulWidget {
  final Request request;
  final bool isAdmin; // Renomeei a variável para isAdmin

  CardsRequest({
    required this.request,
    required this.isAdmin,
  });

  @override
  _CardsRequestState createState() => _CardsRequestState();
}

class _CardsRequestState extends State<CardsRequest> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isAdmin;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isAdmin
          ? () {
              setState(() {
                isSelected = !isSelected;
              });
            }
          : null,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
          side: BorderSide(
            color: isSelected
                ? CustomColors.secondaryColor
                : CustomColors.quaternaryColor,
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
                'Data do Pedido: ${widget.request.dataRequest}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Produtos:',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.request.products.map((product) {
                  return Text('- $product');
                }).toList(),
              ),
              SizedBox(height: 8),
              Text(
                'Status do Pedido: ${widget.request.statusRequest}',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
