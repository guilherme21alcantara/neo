//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_textos_header/header.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/radio_button.dart';
import 'package:neo/Screen/componentes_globais/inputs/radio_button_fino.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/informe_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

class InformeCEPFaculdade extends StatefulWidget {
  const InformeCEPFaculdade({Key key}) : super(key: key);

  @override
  _InformeCEPFaculdadeState createState() => _InformeCEPFaculdadeState();
}

class _InformeCEPFaculdadeState extends State<InformeCEPFaculdade> {
  bool veiculoFicaGaragem;

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
                      _infoFields(size),
                      _veiculoField(size),
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
          paddingLados: size.width * 0.15,
          size: size,
          text: INFORMECEP.FACULDADE),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.01),
        child: Container(
            color: AppCores.BRANCO,
            child: Column(
              children: [
                SizedBox(height: size.height * 0.01),
                InputTexto(size: size, text: 'CEP', h: 0.01, v: 0.05),
                CustomTextButton(
                    textoComum: 'Não sabe o CEP?',
                    textoClicavel: 'Aqui !',
                    function: () {},
                    h: 0.08,
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
            InputTexto(size: size, text: 'Rua / Avenida', h: 0.01, v: 0.05),
            InputTexto(size: size, text: 'Número', h: 0.01, v: 0.05),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }

  Widget _veiculoField(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      child: Container(
        color: AppCores.BRANCO,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: Text(
                'O Veículo ﬁca em garagem?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            RadioButtonFino(
                value: true,
                groupValue: veiculoFicaGaragem,
                onChanged: (value) {
                  setState(() {
                    veiculoFicaGaragem = true;
                  });
                },
                size: size,
                text: 'SIM'),
            RadioButtonFino(
                value: false,
                groupValue: veiculoFicaGaragem,
                onChanged: (value) {
                  setState(() {
                    veiculoFicaGaragem = false;
                  });
                },
                size: size,
                text: 'NÃO'),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
