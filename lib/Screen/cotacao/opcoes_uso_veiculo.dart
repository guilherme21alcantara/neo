import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/inputs/radio_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/componentes_globais/textos_gerais/Cotacao/opcoes_veiculo.dart';
import 'package:neo/Screen/cotacao/header.dart';

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
            size: size,
            text: OPCOESVEICULO.CORPO,
          ),
          CustomRadioButton(
              value: 1,
              groupValue: selectedValue,
              onChanged: (value2) {
                setState(() {});
              },
              size: size,
              text: 'asdasdasd'),
          CustomRadioButton(
              value: 2,
              groupValue: selectedValue,
              onChanged: (value2) {
                setState(() {});
              },
              size: size,
              text: 'asdasdasd'),
        ],
      ),
    );
  }
}
