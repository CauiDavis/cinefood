import 'package:cinefood/core/custom_colors.dart';
import 'package:cinefood/widgets/cards_history.dart';
import 'package:flutter/material.dart';

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
                  child: ListView(
                children: [
                  CardsHistory(
                    history: History(
                      dataHistory: '23/11/2023',
                      products: ['Produto 1', 'Produto 2', 'Produto 3'],
                    ),
                  ),
                   CardsHistory(
                    history: History(
                      dataHistory: '23/11/2023',
                      products: ['Produto 1', 'Produto 2', 'Produto 3'],
                    ),
                  ),
                   CardsHistory(
                    history: History(
                      dataHistory: '23/11/2023',
                      products: ['Produto 1', 'Produto 2', 'Produto 3'],
                    ),
                  ),
                   CardsHistory(
                    history: History(
                      dataHistory: '23/11/2023',
                      products: ['Produto 1', 'Produto 2', 'Produto 3'],
                    ),
                  ),
                   CardsHistory(
                    history: History(
                      dataHistory: '23/11/2023',
                      products: ['Produto 1', 'Produto 2', 'Produto 3'],
                    ),
                  ),
                   CardsHistory(
                    history: History(
                      dataHistory: '23/11/2023',
                      products: ['Produto 1', 'Produto 2', 'Produto 3'],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      )),
    );
  }
}
