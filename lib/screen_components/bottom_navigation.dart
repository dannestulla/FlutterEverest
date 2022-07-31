import 'package:flutter/material.dart';

Widget bottomNavigation() {
  return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: 'Carteiras',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_input_component_outlined),
          label: 'Movimentações',
        ),
      ],
      currentIndex: 1,
      selectedItemColor: const Color.fromARGB(255, 255, 21, 134));
}
