import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/login.page.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.xmark_rectangle_fill;

  return AppBar(
    leading: const BackButton(
      color: Colors.black,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(icon),
        color: Colors.black,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: ((context) => LoginPage())),
          );
        },
      ),
    ],
  );
}
