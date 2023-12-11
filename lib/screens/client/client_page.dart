import 'dart:developer';

import 'package:cinefood/screens/client/favortes_client.dart';
import 'package:cinefood/screens/client/history_client.dart';
import 'package:cinefood/screens/client/home_client.dart';
import 'package:cinefood/screens/client/profile_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/bottom_navigatorbar/custom_bottom_navigator_bar_client.dart';

class ClientPage extends StatefulWidget {
  final String name;
  final String photo;
  
  ClientPage({
    required this.name,
    required this.photo,
  });
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ClientPage> {
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> logoutApp() async {
    try {
      await GoogleSignIn().signOut();
      FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e, s) {
      log('Falha no logout!');
      log(s.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () async {
          await logoutApp();
          Navigator.pop(context);
        },
      ).buildAppBar(),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomeClient(),
          HistoryClient(),
          FavoritesClient(),
          ProfileClient(
            userPhotoUrl: widget.photo,
            userName: widget.name,
          ),
          // Adicione mais telas conforme necessário
        ],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBarClient(
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
