import 'package:flutter/material.dart';

import '../utils/strings.dart';

Widget bottomNavigation() {
  return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: Strings.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: Strings.carteiras,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_input_component_outlined),
          label: Strings.movimentacoes,
        ),
      ],
      currentIndex: 1,
      selectedItemColor: const Color.fromARGB(255, 255, 21, 134));
}
