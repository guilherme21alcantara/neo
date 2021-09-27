//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';

class InputTexto extends StatelessWidget {
  final double h, v;
  final Size size;
  final String text;
  const InputTexto({Key key, this.h, this.v, this.size, this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: size.height * h, horizontal: size.width * v),
      child: Container(
          height: size.height * 0.06,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Center(
              child: TextFormField(
                decoration: new InputDecoration.collapsed(
                    hintText: text,
                    hintStyle: TextStyle(color: AppCores.PRETO)),
              ),
            ),
          )),
    );
  }
}
