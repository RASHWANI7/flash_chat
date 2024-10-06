import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

enum RoundedButtonType { home_logIn, home_register, login, register }

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.type});

  final RoundedButtonType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 15.0,
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            if (type == RoundedButtonType.home_logIn) {
              Navigator.pushNamed(context, LoginScreen.id);
            } else if (type == RoundedButtonType.home_register) {
              Navigator.pushNamed(context, RegistrationScreen.id);
            } else if (type == RoundedButtonType.login) {
            } else if (type == RoundedButtonType.register) {}
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            type == RoundedButtonType.home_logIn
                ? 'LOG IN'
                : type == RoundedButtonType.home_register
                    ? 'REGISTER '
                    : type == RoundedButtonType.login
                        ? 'LOG IN'
                        : type == RoundedButtonType.register
                            ? 'REGISTER'
                            : 'REGISTER',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
