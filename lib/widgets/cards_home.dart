import 'package:flutter/material.dart';

class CardsHome extends StatefulWidget {
  const CardsHome({super.key});

  @override
  _SelectableCardState createState() => _SelectableCardState();
}

class _SelectableCardState extends State<CardsHome> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 150,
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            side: BorderSide(
              color: isSelected
                  ? const Color(0xFFE1E0D7)
                  : const Color(0xFFFEDE6B),
              width: 1.0,
            ),
          ),
          color: Colors
              .transparent, // Cor do Card condicionalmente com base no estado
          child: Column(
            children: [Text("aaaaaaaaaaaaaaaaa")],
          ),
        ),
      ),
    );
  }
}
