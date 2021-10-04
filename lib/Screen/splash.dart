import 'dart:async';
import 'package:flutter/material.dart';
import 'package:neo/Screen/carrosel/carrosel.dart';
import 'package:neo/components/componentes_globais/animacao.dart';

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
            MaterialPageRoute(builder: (BuildContext context) => Carousel())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.only(right: 190, bottom: 150),
          child: BouncingBallDemo()),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
    );
  }

  
}
