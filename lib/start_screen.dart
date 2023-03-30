import 'package:flutter/material.dart';
import 'package:exercise_satu/login_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // force image fit screen
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/start-screen.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Icon(Icons.arrow_forward),
                      backgroundColor: Color.fromRGBO(255, 215, 2, 1),
                    )),
              ))
            ])));
  }
}
