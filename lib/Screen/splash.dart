import 'dart:async';
import 'package:flutter/material.dart';
import 'package:neo/Screen/carrosel/carrosel.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Scaffold())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/bg.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
