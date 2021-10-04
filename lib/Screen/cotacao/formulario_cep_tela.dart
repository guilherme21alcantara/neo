//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/informe_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

import 'formulario_cep.dart';

class FormularioCep extends StatefulWidget {
  const FormularioCep({Key key}) : super(key: key);

  @override
  _FormularioCepState createState() => _FormularioCepState();
}

class _FormularioCepState extends State<FormularioCep> {
  bool veiculoFicaGaragem;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      title: TITULOS.COTACAO,
      conteudo: FormularioCEP(
        size: size,
        title: INFORMECEP.FACULDADE,
        temCampoInfo: true,
      ),
      rota: '',
    );
  }
}
