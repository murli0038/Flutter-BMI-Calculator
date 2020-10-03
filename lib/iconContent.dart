import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {

  iconContent({this.name, this.icon});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70,
        ),
        SizedBox(height: 10),
        Text(name,
          style: TextStyle(
              fontSize: 18,
              color: Color(0xFF8D8E89)
          ),)
      ],
    );
  }
}