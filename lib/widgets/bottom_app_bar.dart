import 'package:flutter/material.dart';

class CustomBottomAppBar{
  static final BottomAppBar bottomNavigationBar = BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.home)),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.history),
            ),
            IconButton(onPressed: () => {}, icon: Icon(Icons.star)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.person)),
          ]),
        );
}