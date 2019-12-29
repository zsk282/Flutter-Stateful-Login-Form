import 'package:flutter/material.dart';
import '../mixins/ValidationsMixins.dart';

class LoginScreen extends StatefulWidget{
  @override
  createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationsMixins{
  
  final formKey = GlobalKey<FormState>();

  String email;
  String password;

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 20.0)),
            submitButton()
          ],
        ),
      )
    );
  }

  Widget emailField(){
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'you@domain.com',
        ),
        validator: emailValidatior,
        onSaved: (String value){
          email = value;
        },
      );
  }

  Widget passwordField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your secret password'
      ),  
      validator: passwordValidator,
      onSaved: (String value){
        password = value;
      },
    );
  }

  Widget submitButton(){
    return RaisedButton(
      child: Text('Login'),
      onPressed: (){
        if(formKey.currentState.validate()){
          formKey.currentState.save();
          // take email and password and get those data here
          print('Email: '+email);
          print('Password: '+password);
        }
      },
      color: Colors.red, 
    );
  }
}