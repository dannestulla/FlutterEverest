import 'package:flutter/material.dart';

class BitcoinScreen extends StatelessWidget {
  const BitcoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BitcoinScreen")),
      body: const Center(child: Text("BitcoinScreen")),
    );
  }
}