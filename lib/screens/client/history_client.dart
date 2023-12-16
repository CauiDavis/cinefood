import 'package:cinefood/core/custom_colors.dart';
import 'package:cinefood/widgets/cards/cards_history.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
                Text(
                  'Histórico',
                  style: TextStyle(
                    color: CustomColors.quaternaryColor,
                    fontSize: 24,
                  ),
                ),
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
                        .collection('historico')
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

                      // Use os documentos reais do Firestore no lugar dos CardsHistory
                      return ListView(
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                          Map<String, dynamic> data =
                              document.data() as Map<String, dynamic>;

                          // Substitua os dados fictícios pelos dados reais do Firestore
                          return CardsHistory(
                            history: History(
                              dataHistory: data['dataHistory'],
                              products: List<String>.from(data['products']),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
