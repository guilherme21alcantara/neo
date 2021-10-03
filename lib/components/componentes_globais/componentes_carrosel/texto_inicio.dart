//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextoInicio extends StatelessWidget {
  final String texto;
  const TextoInicio({this.texto});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.02),
      child: Container(
        height: size.height * 0.105,
        width: size.width * 0.9,
        child: Text(
          texto,
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
