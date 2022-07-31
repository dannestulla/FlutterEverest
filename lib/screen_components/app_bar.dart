import 'package:flutter/material.dart';

import '../utils/strings.dart';

AppBar getAppBar() {
  return AppBar(
      title: const Text(
        Strings.detalhes,
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: const Color.fromARGB(250, 245, 246, 250));
}