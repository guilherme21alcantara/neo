//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';


class MainHeader extends StatelessWidget {
  final Size size;
  final String text;
  final double paddingLados;
  const MainHeader(
      {Key key,
      this.size,
      this.text,
      this.paddingLados})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: paddingLados,
          left: paddingLados,
          top: size.height * 0.04,
          bottom: size.height * 0.02),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppCores.ROXOPRINCIPAL,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
