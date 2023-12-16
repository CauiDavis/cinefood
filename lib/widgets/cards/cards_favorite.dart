import 'package:cinefood/core/custom_colors.dart';
import 'package:flutter/material.dart';

class Favorite {
  final List<String> products;

  Favorite({
    required this.products,
  });
}

class CardsFavorite extends StatefulWidget {
  final Favorite favorite;

  CardsFavorite({
    required this.favorite,
  });

  @override
  _CardsFavoriteState createState() => _CardsFavoriteState();
}

class _CardsFavoriteState extends State<CardsFavorite> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
          side: BorderSide(
            color: isSelected ? CustomColors.secondaryColor : CustomColors.quaternaryColor,
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
                'Produtos:',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.favorite.products.map((product) {
                  return Text('- $product');
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
