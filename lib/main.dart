import 'package:flutter/material.dart';
import 'package:instagram/LoginScreen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
