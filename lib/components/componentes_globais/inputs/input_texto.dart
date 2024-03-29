//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';

class InputTexto extends StatelessWidget {
  final double h, v;
  final double height, width;
  final Size size;
  final String text;
  final IconData icon;
  const InputTexto(
      {Key key,
      this.h,
      this.v,
      this.size,
      this.text,
      this.icon,
      this.height,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: size.height * h, horizontal: size.width * v),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Center(
              child: TextFormField(
                decoration: new InputDecoration(
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText: text,
                    hintStyle: TextStyle(color: AppCores.PRETO),
                    suffixIcon: Icon(
                      icon,
                      color: AppCores.PRETO,
                    )),
              ),
            ),
          )),
    );
  }
}
