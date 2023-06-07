import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zigsaw/screens/account_screen.dart';
import 'package:zigsaw/screens/contact_screen.dart';
import 'package:zigsaw/screens/home.dart';
import 'package:zigsaw/screens/share_sreen.dart';
import 'package:zigsaw/screens/wallet_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;
  final screens = [
    ContactScreen(),
    WalletScreen(),
    Home(),
    ShareScreen(),
    AccountScreen(),
  ];
  static const List<Widget> items = [
    Icon(
      Icons.headphones_outlined,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.wallet,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.add,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.share,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.person_outlined,
      size: 30,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color.fromARGB(255, 0, 140, 255),
        height: 75,
        index: index,
        items: items,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
