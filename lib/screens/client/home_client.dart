import 'package:cinefood/core/custom_colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/cards_home.dart';

class HomeClient extends StatelessWidget {
  HomeClient({super.key});
  bool isCardSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, right: 26, left: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Comida',
                  style: TextStyle(
                    color: Color(0xFFFEDE6B),
                    fontSize: 24,
                  )),
              Expanded(
                  child: SizedBox.expand(
                      child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CardsHome();
                },
              ))),
              SizedBox(
                height: 10,
              ),
              Text('Bebida',
                  style: TextStyle(
                    color: Color(0xFFFEDE6B),
                    fontSize: 24,
                  )),
              Expanded(
                  child: SizedBox.expand(
                      child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CardsHome();
                },
              ))),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(100, 40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Pedir",
                        style: TextStyle(
                          color: CustomColors.secondaryColor,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.offline_pin,
                        color: CustomColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(120, 40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Adicionar",
                        style: TextStyle(
                          color: CustomColors.secondaryColor,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: CustomColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      )),
    );
  }
}
