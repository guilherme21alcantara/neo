//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/componentes_globais/textos_header_componentes/header.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/informe_cep.dart';

class InformeCEPTrabalho extends StatefulWidget {
  const InformeCEPTrabalho({Key key}) : super(key: key);

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
                      _campoCEP(size),
                      _infoFields(size),
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
          text: INFORMECEP.TRABALHO),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.01),
        child: Container(
            color: AppCores.BRANCO,
            child: Column(
              children: [
                SizedBox(height: size.height * 0.01),
                InputTexto(size: size, text: 'CEP', h: 0.01,v: 0.05),
                CustomTextButton(
                    textoComum: 'Não sabe o CEP?',
                    textoClicavel: 'Aqui !',
                    function: () {},
                    size: size),
                SizedBox(height: size.height * 0.01),
              ],
            )),
      )
    ]);
  }

  Widget _infoFields(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      child: Container(
        color: AppCores.BRANCO,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.01),
            CustomDropdown(
                size: size, text: 'Estado', optionsList: ['optionsList']),
            CustomDropdown(
                size: size, text: 'Cidade', optionsList: ['optionsList']),
            InputTexto(size: size, text: 'Rua / Avenida', h: 0.01,v: 0.05),
            InputTexto(size: size, text: 'Número', h: 0.01,v: 0.05),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
