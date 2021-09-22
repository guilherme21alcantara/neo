import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      height: size.height * 0.025,
      width: size.width * 0.15,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
    );
  }
}
