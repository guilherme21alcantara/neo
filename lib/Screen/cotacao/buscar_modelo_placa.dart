//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/lista_cotacao.dart';

class BuscarModelo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      title: TITULOS.COTACAO,
      conteudo: lista(size, true, false, false, false, true, ),
      rota: '',
    );
  }
}
