import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/Screen/componentes_globais/componentes_textos_header/header.dart';
import 'package:neo/Screen/componentes_globais/inputs/radio_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/opcoes_veiculo.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

class OpcoesUsoVeiculo extends StatefulWidget {
  const OpcoesUsoVeiculo({Key? key}) : super(key: key);

  @override
  _OpcoesUsoVeiculoState createState() => _OpcoesUsoVeiculoState();
}

class _OpcoesUsoVeiculoState extends State<OpcoesUsoVeiculo> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      title: TITULOS.COTACAO,
      conteudo: _corpo(size),
    );
  }

  Widget _corpo(Size size) {
    return Container(
      height: size.height * 0.9,
      width: size.width,
      child: Column(
        children: [
          MainHeader(
            paddingLados: size.width * 0.05,
            size: size,
            text: OPCOESVEICULO.CORPO,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomRadioButton(
              value: 1,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Apenas para passeio'),
          CustomRadioButton(
              value: 2,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso pessoal do dia a dia'),
          CustomRadioButton(
              value: 3,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Sou motorista de app ou taxista'),
          CustomRadioButton(
              value: 4,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso para transporte de cargas e frete'),
          CustomRadioButton(
              value: 5,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso para ida e volta ao trabalho'),
          CustomRadioButton(
              value: 6,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Visita de clientes ou fornecedores'),
          CustomRadioButton(
              value: 7,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso para ir a faculdade ou curso'),
          CustomRadioButton(
              value: 8,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Outros usos a trabalho'),
        ],
      ),
    );
  }
}
