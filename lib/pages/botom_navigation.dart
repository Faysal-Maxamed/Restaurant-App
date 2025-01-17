import 'package:flutter/material.dart';

class BotomNavigationScreen extends StatelessWidget {
  const BotomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(""),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      ]),
    );
  }
}
