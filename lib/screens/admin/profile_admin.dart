import 'package:flutter/material.dart';

import '../../core/custom_colors.dart';

class ProfileAdmin extends StatelessWidget {
  final String userPhotoUrl;
  final String userName;

  const ProfileAdmin({
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
                      backgroundImage: NetworkImage(userPhotoUrl),
                      radius: 50,
                      backgroundColor: CustomColors.quaternaryColor,
                    ),
                  ),
                  Text(firstTwoNames,
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
            ],
          ),
        ),
      )),
    );
  }
}
