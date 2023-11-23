import 'package:cinefood/core/custom_colors.dart';
import 'package:cinefood/screens/client_page.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Alinha os widgets verticalmente ao centro
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/scraxyIcon.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ClientPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        maximumSize: const Size(240, 40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Cliente",
                          style: TextStyle(
                            color: CustomColors.quaternaryColor,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.person_2,
                          color: CustomColors.quaternaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(240, 40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Administrador",
                        style: TextStyle(
                          color: CustomColors.quaternaryColor,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.person_3,
                        color: CustomColors.quaternaryColor,
                      ),
                    ],
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
