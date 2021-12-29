import 'package:flutter/material.dart';
import 'package:riyym/dataBase/authentication.dart';
import 'package:riyym/homepage.dart';

import 'registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final myController = TextEditingController();
  final myControllerPw = TextEditingController();
  // String username = "name";
  // String password = "123";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/RIYYMmusic.png'),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        controller: myController,
                        autofocus: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                          ),
                          labelText: 'e-mail',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      TextField(
                        controller: myControllerPw,
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        autofocus: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.vpn_key,
                          ),
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.login),
                          TextButton(
                            child: const Text(
                              'login',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: TextButton.styleFrom(primary: Colors.purple),
                            onPressed: () async {
                              var signing = await Authentication().logIn(
                                  myController.text, myControllerPw.text);
                              if (signing == 'true') {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomePage();
                                    },
                                  ),
                                  (route) => false,
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(signing),
                                    );
                                  },
                                );
                              }

                              // if ((myController.text == username) &&
                              //     (myControllerPw.text == password)) {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) {
                              //         return HomePage();
                              //       },
                              //     ),
                              //   );
                              // } else {
                              //   showDialog(
                              //     context: context,
                              //     builder: (context) {
                              //       return AlertDialog(
                              //         content: Text(
                              //             'Wrong mail or password!\n(mail=name, password=123)'),
                              //       );
                              //     },
                              //   );
                              // }
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Don\'t have an account?'),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const RegistrationScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              ' SignUp',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const <Widget>[
                          Expanded(
                            child: Divider(thickness: 1.5, endIndent: 15),
                          ),
                          Text('OR'),
                          Expanded(
                            child: Divider(thickness: 1.5, indent: 15),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(alignment: Alignment.center),
                        child: Center(
                          child: Row(
                            children: const <Widget>[
                              Icon(Icons.mail),
                              Text('Google'),
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(alignment: Alignment.center),
                        child: Center(
                          child: Row(
                            children: const <Widget>[
                              Icon(Icons.phone_iphone),
                              Text('Apple'),
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
