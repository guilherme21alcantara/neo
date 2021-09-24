import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_textos_header/header.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/radio_button_fino.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';

class FormularioCEP extends StatefulWidget {
  final Size size;
  final String title;
  final bool temCampoInfo;
  const FormularioCEP(
      {Key? key,
      required this.size,
      required this.title,
      required this.temCampoInfo})
      : super(key: key);

  @override
  _FormularioCEPState createState() => _FormularioCEPState();
}

class _FormularioCEPState extends State<FormularioCEP> {
  bool veiculoFicaGaragem = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _corpo(widget.size),
    );
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
                      if (widget.temCampoInfo) _infoFields(size),
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
          paddingLados: size.width * 0.15, size: size, text: widget.title),
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
