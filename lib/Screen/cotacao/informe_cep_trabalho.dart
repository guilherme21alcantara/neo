import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/componentes_globais/textos_gerais/Cotacao/informe_cep.dart';
import 'package:neo/Screen/componentes_globais/textos_gerais/Cotacao/header.dart';

class InformeCEPTrabalho extends StatefulWidget {
  const InformeCEPTrabalho({Key? key}) : super(key: key);

  @override
  _InformeCEPTrabalhoState createState() => _InformeCEPTrabalhoState();
}

class _InformeCEPTrabalhoState extends State<InformeCEPTrabalho> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(conteudo: _corpo(size));
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
                      MainHeader(
                          paddingLados: size.width * 0.2,
                          size: size,
                          text: INFORMECEP.TRABALHO),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.05,
                            vertical: size.height * 0.01),
                        child: Container(
                            color: AppCores.BRANCO,
                            child: Column(
                              children: [
                                InputTexto(size: size, text: 'CEP'),
                                CustomTextButton(
                                    textoComum: 'Não sabe o CEP?',
                                    textoClicavel: 'Aqui !',
                                    function: () {},
                                    size: size)
                              ],
                            )),
                      )
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
}
