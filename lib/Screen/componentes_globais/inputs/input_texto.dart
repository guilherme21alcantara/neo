import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';

class InputTexto extends StatefulWidget {
  final Size size;
  final String text;
  const InputTexto({Key? key, required this.size, required this.text})
      : super(key: key);

  @override
  _InputTextoState createState() => _InputTextoState();
}

class _InputTextoState extends State<InputTexto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.size.height * 0.02,
          horizontal: widget.size.width * 0.05),
      child: Container(
          height: widget.size.height * 0.05,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
            child: Center(
              child: TextFormField(
                decoration: new InputDecoration.collapsed(
                    hintText: widget.text,
                    hintStyle: TextStyle(color: AppCores.PRETO)),
              ),
            ),
          )),
    );
  }
}
