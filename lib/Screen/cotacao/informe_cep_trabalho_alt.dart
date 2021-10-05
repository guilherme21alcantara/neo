//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Routes/app_routes.dart';

import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/informe_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

import 'formulario_cep.dart';

class InformeCEPTrabalhoAlt extends StatefulWidget {
  const InformeCEPTrabalhoAlt({Key key}) : super(key: key);

  @override
  _InformeCEPTrabalhoAltState createState() => _InformeCEPTrabalhoAltState();
}

class _InformeCEPTrabalhoAltState extends State<InformeCEPTrabalhoAlt> {
  bool veiculoFicaGaragem;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      title: TITULOS.COTACAO,
      conteudo: FormularioCEP(
        size: size,
        title: INFORMECEP.TRABALHO,
        temCampoInfo: false,
      ),
      rota: Routes.OPCAO,
    );
  }
}
