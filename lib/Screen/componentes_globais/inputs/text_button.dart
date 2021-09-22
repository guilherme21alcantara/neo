import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';

class CustomTextButton extends StatefulWidget {
  final Size size;
  final String textoComum;
  final String textoClicavel;
  final Function()? function;
  const CustomTextButton(
      {Key? key,
      required this.textoComum,
      required this.textoClicavel,
      required this.function,
      required this.size})
      : super(key: key);

  @override
  _CustomTextButtonState createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.03),
      child: Row(
        children: [
          Text(widget.textoComum,
              style: TextStyle(
                  color: AppCores.PRETO, decoration: TextDecoration.underline)),
          TextButton(
              onPressed: widget.function,
              child: Text(
                widget.textoClicavel,
                style: TextStyle(
                    color: AppCores.ROXOPRINCIPAL,
                    decoration: TextDecoration.underline,
                    decorationColor: AppCores.ROXOPRINCIPAL),
              ))
        ],
      ),
    );
  }
}
