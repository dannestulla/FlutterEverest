import 'package:flutter/material.dart';

import '../utils/strings.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
