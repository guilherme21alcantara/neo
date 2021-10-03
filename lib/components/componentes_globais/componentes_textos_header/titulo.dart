//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Titulo extends StatelessWidget {
  final double h;
  final double r;
  final String titulo;
  final double font;
  final Color cor;
  final FontWeight bold;
  const Titulo({this.h,this.r ,this.titulo, this.font, this.cor, this.bold});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * h, right: size.height*r),
      child: Text(
        titulo,
        style:
            TextStyle(fontSize: font, fontWeight: bold, color: cor),
      ),
    );
  }
}
