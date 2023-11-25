import 'package:cinefood/core/custom_colors.dart';
import 'package:cinefood/screens/admin/admin_page.dart';
import 'package:cinefood/screens/client/client_page.dart';
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
                        const SizedBox(width: 4),
                        Image(
                            width: 30,
                            height: 30,
                            image: Image.asset(
                              'assets/clientIcon.png',
                            ).image)
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminPage()),
                    );
                  },
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
                      const SizedBox(width: 4),
                      Image(
                          width: 30,
                          height: 30,
                          image: Image.asset(
                            'assets/admIcon.png',
                          ).image)
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
