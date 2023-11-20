import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/cards_home.dart';

class Client1 extends StatefulWidget {
  const Client1({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<Client1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
      ).buildAppBar(),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            Center(child: SafeArea(
                  child: Center(
                      child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 26),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Comida',
                          style: TextStyle(
                            color: Color(0xFFFEDE6B),
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          children: [
                            CardsHome(),
                          ],
                        ),
                        Row(
                          children: [
                            CardsHome(),
                          ],
                        )
                      ],
                    )),
              ))),
            ),
            Center(child: Text('Conteúdo da Página 2')),
            Center(child: Text('Conteúdo da Página 3')),
            Center(child: Text('Conteúdo da Página 4')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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
        ],
      ),
    );
  }
}
