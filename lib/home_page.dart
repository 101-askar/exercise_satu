import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage(
      {super.key, required TextEditingController this.usernameController});

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      /* Stack */
      body: Stack(
        children: <Widget>[
          /* background container */
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home-page.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          /* top container */
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            color: Colors.white30,
          ),
          /* name container */
          Container(
            height: 30,
            width: 250,
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            // color: Colors.yellow,
            child: RichText(
              text: TextSpan(
                text: 'Hello, ',
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: usernameController.text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 215, 2, 1)))
                ],
              ),
            ),
          ),
          /* app name container */
          Container(
            height: 70,
            width: 250,
            margin: EdgeInsets.only(top: 80, left: 20, right: 20),
            // color: Colors.grey,
            child: const Text(
              'P O K E D E X',
              style: TextStyle(
                color: Color.fromRGBO(255, 215, 2, 1),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          /* search container */
          Container(
            height: 70,
            margin: EdgeInsets.only(top: 160, left: 20, right: 20),
            color: Colors.deepOrangeAccent,
          ),
          /* card container */
          Container(
            height: 550,
            margin: EdgeInsets.only(top: 250, left: 20, right: 20),
            color: Colors.white30,
            child: Row(
              children: [
                /* card view */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
