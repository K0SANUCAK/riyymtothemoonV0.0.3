import 'package:flutter/material.dart';
import 'package:riyym/dataBase/authentication.dart';

import 'dataBase/firestoredata.dart';
import 'homepage.dart';
import 'model/user.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  //controller editings
  final firstNameEditingController = TextEditingController();
  final secondNameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      controller: firstNameEditingController,
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: 'Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final secondNameField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      controller: secondNameEditingController,
      onSaved: (value) {
        secondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: 'Surname',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final emailField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      controller: emailEditingController,
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final passwordField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      controller: passwordEditingController,
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final confirmPasswordField = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      controller: confirmPasswordEditingController,
      obscureText: true,
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        hintText: 'Confirm your password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 40,
                        ))),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/smedia2.png'),
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
                    // color: Colors.white,
                  ),
                  // color: Colors.white,
                  margin: EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      firstNameField,
                      Divider(
                        thickness: 1,
                      ),
                      // SizedBox(
                      //   height: 18,
                      // ),
                      secondNameField,
                      Divider(
                        thickness: 1,
                      ),
                      emailField,
                      Divider(
                        thickness: 1,
                      ),
                      passwordField,
                      Divider(
                        thickness: 1,
                      ),
                      confirmPasswordField,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.login),
                          TextButton(
                            child: const Text(
                              'SignUp',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: TextButton.styleFrom(primary: Colors.purple),
                            onPressed: () async {
                              if (passwordEditingController.text ==
                                  confirmPasswordEditingController.text) {
                                String signUpping = await Authentication()
                                    .signUp(emailEditingController.text,
                                        passwordEditingController.text);
                                print(signUpping);
                                if (signUpping == 'true') {
                                  Users user = Users(name: firstNameEditingController.text, surName: secondNameEditingController.text, email: emailEditingController.text);
                                  FireStore().addUser(user: user);
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                    builder: (context) {
                                      return HomePage();
                                    },
                                  ), (route) => false);
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text(signUpping),
                                      );
                                    },
                                  );
                                }
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(
                                          'The confirm password does not match\n\n  Make sure passwords are the same'),
                                    );
                                  },
                                );
                              }
                              // Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      /* TextButton(
                        child: const Text(
                          'Temporary Music Page',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(primary: Colors.purple),
                        onPressed: () {
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MusicGeneralScreen();
                              },
                            ),
                          );*/
                        },
                      ),*/

                      // RichText(
                      //   text: const TextSpan(
                      //     text: 'Don\'t have an account?',
                      //     style: TextStyle(
                      //       fontSize: 15,
                      //
                      //       color: Colors.black,
                      //     ),
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //         text: 'SignUp',
                      //         style: TextStyle(
                      //           fontFamily: 'Pacifico',
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 15,
                      //           color: Colors.black,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
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
