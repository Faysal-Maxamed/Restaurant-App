import 'package:flutter/material.dart';
import 'package:resturent_app/pages/home.dart';

class BotomNavigationScreen extends StatefulWidget {
  const BotomNavigationScreen({super.key});

  @override
  State<BotomNavigationScreen> createState() => _BotomNavigationScreenState();
}

class _BotomNavigationScreenState extends State<BotomNavigationScreen> {
  int currentindex = 0;
  List <Widget>pages = [
    HomeScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(""),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "Book"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3_sharp), label: "Profile"),
          ]),
    );
  }
}
