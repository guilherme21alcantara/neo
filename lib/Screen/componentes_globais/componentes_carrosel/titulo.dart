//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Titulo extends StatelessWidget {
  final String titulo;
  const Titulo({this.titulo});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.08),
      child: Text(
        titulo,
        style: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
