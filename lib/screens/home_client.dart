import 'package:flutter/material.dart';

import '../widgets/cards_home.dart';

class HomeClient extends StatelessWidget {
  const HomeClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 26),
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
              height: 40,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bebida',
                      style: TextStyle(
                        color: Color(0xFFFEDE6B),
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardsHome(),
                        CardsHome(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardsHome(),
                        CardsHome(),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ))),
    );
  }
}
