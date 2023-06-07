import 'package:flutter/material.dart';
import 'package:zigsaw/screens/home_screen.dart';
import 'package:zigsaw/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      // home: HomePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}