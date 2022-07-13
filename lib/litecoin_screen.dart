import 'package:flutter/material.dart';

class LitecoinScreen extends StatelessWidget {
  const LitecoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LitecoinScreen"),
        ),
        body: const Center(
          child: Text("LitecoinScreen"),
        ));
  }
}
