import 'package:flutter/material.dart';

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
      //   ),
      // ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     // FloatingActionButton.small(onPressed: (){
      //     //   Navigator.push(context,
      //     //   MaterialPageRoute(
      //     //     builder: (context) => const DetailPage()));
      //     // })
      //   ],
      // ))
    ))));
  }
}
