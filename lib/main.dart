import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scraxy',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0x50170D0D),
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF432727),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF432727)),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        )),
      ),
      home: const Users(),
    );
  }
}

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
                    onPressed: () {},
                    child: const Text("cliente"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(240, 40)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("administrador"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(240, 40),
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
