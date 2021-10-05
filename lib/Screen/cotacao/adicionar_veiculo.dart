import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/custom_box.dart';
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';
import 'package:neo/components/componentes_globais/inputs/text_button.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

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
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Cotação',
      rota: '',
    );
  }
  

  Widget _corpo(Size size) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Text('Me fale um pouco do seu veículo',
            style: TextStyle(
                color: AppCores.ROXOPRINCIPAL,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: size.height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: CustomBox(
            height: size.height * 0.18,
            width: size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputTexto(
                      size: size,
                      text: 'Qual a placa do seu veículo?',
                      h: 0.01,
                      v: 0.05),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  CustomTextButton(
                      textoComum: 'Não sabe a placa ou veículo 0km?',
                      textoClicavel: 'Aqui !',
                      function: () {},
                      h: 0.1,
                      size: size),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
