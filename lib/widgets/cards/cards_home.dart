import 'package:cinefood/core/custom_colors.dart';
import 'package:flutter/material.dart';

class CardsHome extends StatefulWidget {
  final ImageProvider<Object> backgroundImage;
  final String dynamicText;

  const CardsHome({
    required this.backgroundImage,
    required this.dynamicText,
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
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.dynamicText,
                style: TextStyle(
                  color: isSelected
                      ? CustomColors.secondaryColor
                      : CustomColors.tertiaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
