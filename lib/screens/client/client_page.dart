import 'package:cinefood/screens/client/favortes_client.dart';
import 'package:cinefood/screens/client/history_client.dart';
import 'package:cinefood/screens/client/home_client.dart';
import 'package:cinefood/screens/client/profile_client.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class ClientPage extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
      ).buildAppBar(),
      body: PageView(
        controller: _pageController,
        children: [
          HomeClient(),
          HistoryClient(),
          FavoritesClient(),
          ProfileClient(),
          // Adicione mais telas conforme necessário
        ],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Histórico',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          // Adicione mais BottomNavigationBarItems conforme necessário
        ],
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
