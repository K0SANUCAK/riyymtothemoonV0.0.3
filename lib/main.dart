import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _ryapp = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(future: _ryapp, builder: (context, snapshot){
        if(snapshot.hasData){
          return const LoginScreen();
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },),
    );
  }
}
