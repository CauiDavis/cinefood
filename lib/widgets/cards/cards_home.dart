import 'package:flutter/material.dart';

class CardsHome extends StatefulWidget {
  final ImageProvider<Object> backgroundImage;

  const CardsHome({
    required this.backgroundImage,
    Key? key,
  }) : super(key: key);

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
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
          side: BorderSide(
            color:
                isSelected ? const Color(0xFFE1E0D7) : const Color(0xFFFEDE6B),
            width: 1.0,
          ),
        ),
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: widget.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              "aaaaaaaaaaaaaaaaa",
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
