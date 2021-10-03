//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerSelect extends StatelessWidget {
  final Color cor;
  const ContainerSelect ({this.cor});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      height: size.height * 0.025,
      width: size.width * 0.15,
      decoration: BoxDecoration(
          color: cor, borderRadius: BorderRadius.circular(30)),
    );
  }
}
