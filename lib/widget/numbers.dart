import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) => IntrinsicHeight(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      buildButton(context, '4.8', 'Ranking'),
      buildDivider(),
      buildButton(context, '35', 'Following'),
      buildDivider(),
      buildButton(context, '50', 'Follower'),
    ],
  ),
  )
  ;
  
  Widget buildDivider() => Container(
    height: 20,
    child: VerticalDivider(),
  );

  Widget buildButton(BuildContext context, String value, String text)
  =>
  MaterialButton(
    onPressed: (){},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
