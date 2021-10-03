//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/cotacao/buscar_modelo_placa.dart';
import 'package:neo/Screen/cotacao/buscar_placa.dart';
import 'package:neo/Screen/cotacao/cadastro.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/cadastro.dart';
import 'package:get/route_manager.dart';

class BotaoGeral extends StatelessWidget {
  final double h, v;
  final Size size;
  final String text;
  final double tam;
  final Color cor;
  final FontWeight fonte;
  final Function fun;
  const BotaoGeral({
    Key key,
    this.h,
    this.v,
    this.size,
    this.text,
    this.tam,
    this.cor,
    this.fonte,
    this.fun,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * h, horizontal: size.width * v),
        child: GestureDetector(
            onTap: fun,
            child: Container(
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: cor, width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                          fontSize: tam, color: cor, fontWeight: fonte),
                    ),
                  ),
                ))));
  }
}
