import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/component/rounded_button.dart';
import 'package:flash_chat/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          'FLASH CHAT',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white70),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 190.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: (TextStyle(color: Colors.black)),
                  decoration: KFieldDecoration.copyWith(
                    label: (Text(
                      'First Name',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
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
                        'Last Name',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    style: (TextStyle(color: Colors.black)),
                    decoration: KFieldDecoration.copyWith(
                      label: (Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                SizedBox(
                  height: 15,
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
                    )),
                SizedBox(
                  height: 40.0,
                ),
                RoundedButton(type: RoundedButtonType.register),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'creat a new account',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
