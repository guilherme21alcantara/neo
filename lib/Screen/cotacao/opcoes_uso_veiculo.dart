import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/inputs/radio_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';

class OpcoesUsoVeiculo extends StatefulWidget {
  const OpcoesUsoVeiculo({Key? key}) : super(key: key);

  @override
  _OpcoesUsoVeiculoState createState() => _OpcoesUsoVeiculoState();
}

class _OpcoesUsoVeiculoState extends State<OpcoesUsoVeiculo> {
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
          Container(
            child: Text('asinfdioanfioanfioan'),
          ),
          Container(
            height: size.height * 0.7,
            width: size.width,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(List.generate(
                    1,
                    (i) => Column(
                      children: [
                        Column(children: [
                          CustomRadioButton(
                              value: 1,
                              groupValue: 1,
                              onChanged: (value2) {
                                setState(() {});
                              },
                              size: size,
                              text: 'asdasdasd')
                        ]),
                      ],
                    ),
                  ).toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
