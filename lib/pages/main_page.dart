import 'package:flutter/material.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:iconsax/iconsax.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int selectedIndex = 0;
     final List pages = [
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black26,
        selectedIconTheme: IconThemeData(size: 25),
        unselectedIconTheme: IconThemeData(size: 20),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: ''),
             BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar),
            label: ''),
             BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            label: ''),
             BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '')
        ]),
        body: pages[selectedIndex] ,
    );
  }
}