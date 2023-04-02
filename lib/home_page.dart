import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage(
      {super.key, required TextEditingController this.usernameController});

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // text of usernamecontroller
      body: Center(
          child: Text(
        usernameController.text,
        style: const TextStyle(fontSize: 14, color: Colors.deepOrangeAccent),
      )),
    );
  }
}
