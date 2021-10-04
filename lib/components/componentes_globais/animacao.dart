import 'dart:async';
import 'package:flutter/material.dart';

class BouncingBallDemo extends StatefulWidget {
  @override
  _BouncingBallDemoState createState() => _BouncingBallDemoState();
}

class _BouncingBallDemoState extends State<BouncingBallDemo>
    with TickerProviderStateMixin {
  late AnimationController controller;



  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0,
      upperBound: 100,
    );

    controller.addListener(() {
      setState(() {});
    });

    controller.repeat(reverse: true);

    Timer(Duration(seconds: 3), () {
      controller.dispose();
    });
  }

 @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context, ) {
    return Container(
      margin: EdgeInsets.only(top: controller.value),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/logo.png"), scale: 5)),
      ),
    );
  }
}
