import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';

class MainHeader extends StatelessWidget {
  final Size size;
  final String text;
  const MainHeader({Key? key, required this.size, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: size.width * 0.05,
          left: size.width * 0.05,
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
