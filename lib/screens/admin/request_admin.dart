import 'package:cinefood/core/custom_colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/cards_request.dart';

class RequestAdmin extends StatelessWidget {
  const RequestAdmin({super.key});

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
              Text('Pedidos',
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
                    CardsRequest(
                      request: Request(
                        dataRequest: '23/11/2023',
                        products: ['Produto 1', 'Produto 2', 'Produto 3'],
                        statusRequest: 'Em Processo',
                      ),
                    ),
                    CardsRequest(
                      request: Request(
                        dataRequest: '23/11/2023',
                        products: ['Produto 1', 'Produto 2', 'Produto 3'],
                        statusRequest: 'Em Processo',
                      ),
                    ),
                    CardsRequest(
                      request: Request(
                        dataRequest: '23/11/2023',
                        products: ['Produto 1', 'Produto 2', 'Produto 3'],
                        statusRequest: 'Em Processo',
                      ),
                    ),
                    CardsRequest(
                      request: Request(
                        dataRequest: '23/11/2023',
                        products: ['Produto 1', 'Produto 2', 'Produto 3'],
                        statusRequest: 'Em Processo',
                      ),
                    ),

                    // Adicione mais itens conforme necessário
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(120, 40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Concluir",
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
                        "Excluir",
                        style: TextStyle(
                          color: CustomColors.secondaryColor,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.delete,
                        color: CustomColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ])
            ],
          ),
        ),
      )),
    );
  }
}
