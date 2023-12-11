import 'dart:developer';

import 'package:cinefood/core/custom_colors.dart';
import 'package:cinefood/screens/admin/admin_page.dart';
import 'package:cinefood/screens/client/client_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  Future<User?> google() async {
    List<String>? loginMethods;
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        loginMethods = await FirebaseAuth.instance
            .fetchSignInMethodsForEmail(googleUser.email);

        if (loginMethods.contains('password')) {
        } else {
          final googleAuth = await googleUser.authentication;
          final firebaseCredential = GoogleAuthProvider.credential(
              accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

          final userCredential = await FirebaseAuth.instance
              .signInWithCredential(firebaseCredential);

          return userCredential.user;
        }
      }
    } on FirebaseAuthException catch (e, s) {
      log(e.toString());
      log(s.toString());
      if (e.code == 'account-exists-with-different-credential') {
      } else {}
    }

    return null;
  }

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
                    onPressed: () async {
                      User? user = await google();
                      if (user != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClientPage(
                              photo: user.photoURL ?? '',
                              name: user.displayName ?? '',
                            ),
                          ),
                        );
                      }
                      ;
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
                  onPressed: () async {
                    User? user = await google();
                    if (user != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminPage(
                            photo: user.photoURL ?? '',
                            name: user.displayName ?? '',
                          ),
                        ),
                      );
                    };
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
