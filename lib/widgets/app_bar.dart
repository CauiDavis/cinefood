import 'package:flutter/material.dart';

class CustomAppBar {
  static final AppBar appBar = AppBar(
          actions: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Image.asset(
                'assets/appbarIcon.png',
                width: 110,
                height: 30,
              ),
            ),
            const SizedBox(
              width: 180,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () => {},
                icon: Image.asset('assets/exitIcon.png', width: 30, height: 30),
              ),
            )
          ],
        );
}