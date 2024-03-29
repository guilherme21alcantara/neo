import 'package:flutter/material.dart';

import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

class TermosPoliticas extends StatelessWidget {
  const TermosPoliticas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      title: TITULOS.CONTA,
      conteudo: _corpo(size),
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    return Container();
  }
}
