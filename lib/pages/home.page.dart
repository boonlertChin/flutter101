import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/newuser.page.dart';
import 'package:flutter_application_1/main.dart';

import 'package:flutter_application_1/pages/profile.page.dart';
import 'package:flutter_application_1/pages/edit_profile.page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> widgetOptions = <Widget>[
    Text(
      Holder.userName + '1',
      style: const TextStyle(fontSize: 40),
    ),
    Text(Holder.userName),
    EditProfilePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Holder.userName = 'Boonlert';
      debugPrint(
        'UserName $index',
      );
      // Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => NewUser()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text("Travel App"),
      // ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 2, 51, 248),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Color.fromARGB(255, 1, 115, 172),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Color.fromARGB(255, 2, 51, 248),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.switch_account_outlined),
            label: 'Account',
            backgroundColor: Color.fromARGB(255, 1, 115, 172),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
