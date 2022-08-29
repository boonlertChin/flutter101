import 'package:flutter/material.dart';

import 'package:flutter_application_1/widget/buttonLogin.dart';
import 'package:flutter_application_1/widget/inputEmail.dart';
import 'package:flutter_application_1/widget/password.dart';
import 'package:flutter_application_1/widget/verticalText.dart';
import 'package:flutter_application_1/widget/textLogin.dart';
import 'package:flutter_application_1/widget/forgot.dart';
import 'package:flutter_application_1/widget/first.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 1, 115, 172),
                Color.fromARGB(255, 2, 51, 248)
              ]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                Forgot(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
