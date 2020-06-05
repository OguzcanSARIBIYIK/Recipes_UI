import 'dart:ui';

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 1700))
        .then((value) => Navigator.pushReplacementNamed(context, "/home"));
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.orange,
                Colors.orange[800],
              ],
            ),
          ),
          child: Text(
            "RECIPES APP",
            style: TextStyle(
              fontSize: 36,
              letterSpacing: 5,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(2.0, 3.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                Shadow(
                  offset: Offset(2.0, 3.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(125, 0, 0, 255),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
