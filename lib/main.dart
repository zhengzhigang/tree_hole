import 'package:flutter/material.dart';
import 'splash.dart';
// import './home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boss直聘',
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.white),
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 0, 215, 198),
        accentColor: Colors.cyan[300]
      ),
      home: SplashPage(),
    );
  }
}