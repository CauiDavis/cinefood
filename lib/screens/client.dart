import 'package:cinefood/widgets/bottom_navigator_bar.dart';
import 'package:cinefood/widgets/cards_home.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

class Client extends StatelessWidget {
  const Client({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar.appBar,
        body: SafeArea(
            child: Center(
                child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 26),
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child:  Column(
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
        bottomNavigationBar:  CustomBottomNavigationBar()
        );
  }
}

