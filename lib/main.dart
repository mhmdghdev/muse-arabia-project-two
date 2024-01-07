import 'package:flutter/material.dart';
import 'my_home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muse Arabia',
      home: const MyHomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black, // Set app bar color to black
        ),
        scaffoldBackgroundColor: Colors.white, // Set body color to white
        primarySwatch: Colors.blue,
        primaryColor: Colors.black, // Set primary color to black
        hintColor: Colors.teal,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
          titleMedium: TextStyle(fontSize: 16.0, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );

  }
}
