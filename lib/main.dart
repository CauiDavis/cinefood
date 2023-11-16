import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scraxy',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0x50170D0D),
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(color: Color(0xFFE1E0D7)),
        bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF432727)),
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
      home: Client(),
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
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(240, 40)),
                    child: const Text("cliente"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(240, 40),
                  ),
                  child: const Text("administrador"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Client extends StatelessWidget {
  const Client({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Image.asset(
              'assets/appbarIcon.png',
              width: 110,
              height: 30,
            ),
            const SizedBox(width: 220),
            IconButton(
              onPressed: () => {},
              icon: Image.asset('assets/exitIcon.png', width: 30, height: 30),
            ),
          ],
        ),
        body: SafeArea(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
          ),
        )),
        bottomNavigationBar: BottomAppBar(
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
        ));
  }
}
