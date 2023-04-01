import 'package:exercise_satu/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        /* fixed background move when keyboard appears */
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              // image background
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login-screen.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsetsDirectional.only(top: 300),
                width: 320,
                height: 450,
                color: Colors.white38,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      Padding(
                          padding:
                              EdgeInsetsDirectional.only(bottom: 30, top: 30)),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      Container(
                        width: 320,
                        height: 50,
                        color: Colors.black26,
                        margin: EdgeInsetsDirectional.only(top: 100),
                        child: Column(
                          children: <Widget>[
                            Container(
                                width: 320,
                                child: ElevatedButton(
                                  onPressed: () {/* validate */},
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(255, 215, 2, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 50,
                        color: Colors.blueGrey,
                        margin: EdgeInsetsDirectional.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()),
                                );
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 215, 2, 1),
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
