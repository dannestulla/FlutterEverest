import 'package:flutter/material.dart';

class EthereumScreen extends StatelessWidget{
  const EthereumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ethereum"),
      ),
      body: const Center(
        child: Text("Pag de Ethereum"),
      )
    );
  }
}