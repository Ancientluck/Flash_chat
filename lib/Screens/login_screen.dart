import 'package:flutter/material.dart';
import 'package:flash_chat/Components/Rounded Button.dart';
import 'package:flash_chat/Components/inputs.dart';

class LoginScreen extends StatefulWidget {
  static const String id='login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Input(hintphrase: 'Enter your Email', onChange:  (value) {
              //Do something with the user input.
            },),
            SizedBox(
              height: 8.0,
            ),
            Input(hintphrase: 'Enter your password', onChange:  (value) {
              //Do something with the user input.
            },),
            SizedBox(
              height: 24.0,
            ),
            roundedButton(color: Colors.lightBlueAccent, onPressed: (){}, text: 'Log In')
          ],
        ),
      ),
    );
  }
}