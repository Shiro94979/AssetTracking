import 'package:flutter/material.dart';
import './Screens/Login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Sentenance App',
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Color.fromRGBO(245,245,245,2)
      ),
      home: LoginScreen(),
    );
  }
}

