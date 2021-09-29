import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';

class AdicionarVeiculoPage extends StatefulWidget {
  const AdicionarVeiculoPage({Key? key}) : super(key: key);

  @override
  _AdicionarVeiculoPageState createState() => _AdicionarVeiculoPageState();
}

class _AdicionarVeiculoPageState extends State<AdicionarVeiculoPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      child: CustomTextButton(
          textoComum: 'Não sabe a placa ou veículo 0km?',
          textoClicavel: 'Aqui !',
          function: () {},
          h: 0.14,
          size: size),
    );
  }
}
