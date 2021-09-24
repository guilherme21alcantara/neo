//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_textos_header/header.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

class InformeCPF extends StatefulWidget {
  const InformeCPF({Key key}) : super(key: key);

  @override
  _InformeCPFState createState() => _InformeCPFState();
}

class _InformeCPFState extends State<InformeCPF> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(title: TITULOS.COTACAO, conteudo: _corpo(size));
  }

  Widget _corpo(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(List.generate(
              1,
              (i) => Column(
                children: [
                  Column(
                    children: [
                      _campoCEP(size),
                    ],
                  )
                ],
              ),
            ).toList()),
          ),
        ],
      ),
    );
  }

  Widget _campoCEP(Size size) {
    return Column(children: [
      MainHeader(
          paddingLados: size.width * 0.2,
          size: size,
          text: 'Me informa o seu CPF'),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.01),
        child: Container(
            color: AppCores.BRANCO,
            child: Column(
              children: [
                SizedBox(height: size.height * 0.01),
                InputTexto(size: size, text: 'CPF', h: 0.01, v: 0.05),
                SizedBox(height: size.height * 0.01),
              ],
            )),
      )
    ]);
  }
}
