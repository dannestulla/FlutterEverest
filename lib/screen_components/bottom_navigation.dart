import 'package:flutter/material.dart';
import 'package:listagem_cripto/screens/home_screen.dart';
import 'package:listagem_cripto/screens/transactions_screen.dart';
import '../screens/list_screen.dart';
import '../utils/strings.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);
  static const customBottomNavigation = "/bottom_navigation";

  @override
  State<CustomBottomNavigation> createState() => _StateCustomBottomNavigation();
}

class _StateCustomBottomNavigation extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  _StateCustomBottomNavigation();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> routesList = [
    const HomeScreen(),
    const CriptoListSelection(),
    const TransactionsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
      routesList[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 21, 134),
        onTap: (index) {
          _onItemTapped(index);
          routesList[index];
        }));
  }
}
