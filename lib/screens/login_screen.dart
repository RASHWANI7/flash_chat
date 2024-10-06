import 'package:flash_chat/constants.dart';
import 'package:flash_chat/main.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'welcome_screen.dart';
import 'package:flash_chat/component/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          leading: BackButton(
            color: Colors.white,
          ),
          centerTitle: true,
          title: Text(
            'FLASH CHAT',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white70),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 280.0,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: (TextStyle(color: Colors.black)),
                  decoration: KFieldDecoration,
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: (TextStyle(color: Colors.black)),
                  decoration: KFieldDecoration.copyWith(
                    label: (Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                RoundedButton(type: RoundedButtonType.login),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
