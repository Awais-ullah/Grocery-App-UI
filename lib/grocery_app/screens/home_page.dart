import 'package:flutter/material.dart';
import 'package:grocery_app/grocery_app/colors.dart';
import 'package:grocery_app/grocery_app/screens/header_part.dart';
import 'package:grocery_app/grocery_app/screens/item_display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //for bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
      selectedItemColor: primaryColors,
      unselectedItemColor: Colors.green[200],
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chat'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'shoping'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'notification'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite'),

      ]),
       body: ListView(
         children: [
           SizedBox(height: 2,),
           //for header part
           HeaderPart(),
           //for body parts
           ItemDisplay()
         ],
       ),
    );
  }
}
