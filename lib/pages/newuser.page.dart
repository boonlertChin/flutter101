import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/buttonNewUser.dart';
import 'package:flutter_application_1/widget/newEmail.dart';
import 'package:flutter_application_1/widget/newName.dart';
import 'package:flutter_application_1/widget/password.dart';
import 'package:flutter_application_1/widget/singup.dart';
import 'package:flutter_application_1/widget/textNew.dart';
import 'package:flutter_application_1/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
