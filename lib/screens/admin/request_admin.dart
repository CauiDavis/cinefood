import 'package:cinefood/core/custom_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../widgets/cards/cards_request.dart';

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
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('pedidos')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (snapshot.hasError) {
                      return Center(
                        child: Text('Erro: ${snapshot.error}'),
                      );
                    }

                    // Use os documentos reais do Firestore no lugar dos CardsRequest
                    return ListView(
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data() as Map<String, dynamic>;

                        // Substitua os dados fictícios pelos dados reais do Firestore
                        return CardsRequest(
                          request: Request(
                            dataRequest: data['data'],
                            products: List<String>.from(data['pedidos']),
                            statusRequest: data['status'],
                            
                          ), isAdmin: true,
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(140, 40),
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
                    maximumSize: const Size(140, 40),
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
