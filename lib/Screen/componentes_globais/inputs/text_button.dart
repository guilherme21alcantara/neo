import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';


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
      padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.1),
      child: Container(
        height: widget.size.height * 0.03,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.textoComum,
                style: TextStyle(
                    color: AppCores.PRETO,
                    decoration: TextDecoration.underline)),
            Padding(
              padding: EdgeInsets.only(bottom: widget.size.height * 0.0095),
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, minimumSize: Size(30, 10)),
                  onPressed: widget.function,
                  child: Text(
                    widget.textoClicavel,
                    style: TextStyle(
                        color: AppCores.ROXOPRINCIPAL,
                        decoration: TextDecoration.underline,
                        decorationColor: AppCores.ROXOPRINCIPAL),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
