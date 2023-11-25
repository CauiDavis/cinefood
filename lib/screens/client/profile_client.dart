import 'package:cinefood/widgets/cards_home.dart';
import 'package:cinefood/widgets/cards_request.dart';
import 'package:flutter/material.dart';

import '../../core/custom_colors.dart';

class ProfileClient extends StatelessWidget {
  const ProfileClient({super.key});

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
              Text('Perfil',
                  style: TextStyle(
                    color: CustomColors.quaternaryColor,
                    fontSize: 24,
                  )),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 10),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: CustomColors.quaternaryColor,
                    ),
                  ),
                  Text('Constatino',
                      style: TextStyle(
                        color: CustomColors.quaternaryColor,
                        fontSize: 20,
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: CustomColors.quaternaryColor,
                  thickness: 1,
                ),
              ),
              Text('Meus pedidos',
                  style: TextStyle(
                    color: CustomColors.quaternaryColor,
                    fontSize: 20,
                  )),
              SizedBox(
                height: 10,
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
              )
            ],
          ),
        ),
      )),
    );
  }
}
