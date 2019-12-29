import 'package:flutter/material.dart';
import 'screens/loginScreen.dart';

class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      title: "Login Page",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}