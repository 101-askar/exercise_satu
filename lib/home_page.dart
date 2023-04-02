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
            // color: Colors.white30,
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
          /* profile picture container */
          Container(
            height: 90,
            width: 90,
            margin: EdgeInsets.only(top: 55, left: 295, right: 20),
            // color: Colors.red,
            child: const CircleAvatar(
              // background from internet,
              backgroundImage: NetworkImage(
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/005.png'),
            ),
          ),
          /* search container */
          Container(
            // alignment: AlignmentDirectional.center,
            height: 70,
            margin: EdgeInsets.only(top: 160, left: 20, right: 20),
            // color: Colors.deepOrangeAccent,
            child: Row(
              children: [
                /* search bar */
                Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  width: 250,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  // color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Pokemon',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                ),
                /* search button */
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  // color: Colors.white,
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
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
