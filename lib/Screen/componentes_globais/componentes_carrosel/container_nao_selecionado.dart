import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerNaoSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      height: size.height * 0.025,
      width: size.width * 0.05,
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(),borderRadius: BorderRadius.circular(30)),
    );
  }
}
