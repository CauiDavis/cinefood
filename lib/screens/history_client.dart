import 'package:cinefood/core/custom_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/cards_home.dart';

class HistoryClient extends StatelessWidget {
  const HistoryClient({super.key});

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
              Text('Histórico',
                  style: TextStyle(
                    color: CustomColors.quaternaryColor,
                    fontSize: 24,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: CustomColors.quaternaryColor,
                  thickness: 1,
                ),
              ),
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
            ],
          ),
        ),
      )),
    );
  }
}
