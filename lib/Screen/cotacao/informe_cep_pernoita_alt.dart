import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/cotacao/formulario_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/informe_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

class InformeCEPPernoitaAlt extends StatelessWidget {
  const InformeCEPPernoitaAlt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        title: TITULOS.COTACAO,
        conteudo: FormularioCEP(
          size: size,
          title: INFORMECEP.PERNOITA,
          temCampoInfo: false,
        ));
  }
}
