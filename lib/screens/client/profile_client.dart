import 'package:cinefood/widgets/cards/cards_request.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../core/custom_colors.dart';

class ProfileClient extends StatelessWidget {
  final String userPhotoUrl;
  final String userName;

  const ProfileClient({
    required this.userPhotoUrl,
    required this.userName,
  });

  String getFirstTwoNames(String fullName) {
    List<String> names = fullName.split(' ');
    if (names.length >= 2) {
      return '${names[0]} ${names[1]}';
    } else {
      return fullName;
    }
  }

  @override
  Widget build(BuildContext context) {
    String firstTwoNames = getFirstTwoNames(userName);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perfil',
                  style: TextStyle(
                    color: CustomColors.quaternaryColor,
                    fontSize: 24,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(userPhotoUrl),
                        radius: 50,
                        backgroundColor: CustomColors.quaternaryColor,
                      ),
                    ),
                    Text(
                      firstTwoNames,
                      style: TextStyle(
                        color: CustomColors.quaternaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    color: CustomColors.quaternaryColor,
                    thickness: 1,
                  ),
                ),
                Text(
                  'Meus pedidos',
                  style: TextStyle(
                    color: CustomColors.quaternaryColor,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                          Map<String, dynamic> data =
                              document.data() as Map<String, dynamic>;

                          // Substitua os dados fictícios pelos dados reais do Firestore
                          return CardsRequest(
                            request: Request(
                              dataRequest: data['data'],
                              products: List<String>.from(data['pedidos']),
                              statusRequest: data['status'], 
                            ), isAdmin: false,

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
