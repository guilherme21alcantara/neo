import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';

import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

class ScaffoldPrincipal extends StatelessWidget {
  final Widget conteudo;
  const ScaffoldPrincipal({Key? key, required this.conteudo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      backgroundColor: AppCores.BACKGROUND,
      appBar: AppBar(
        toolbarHeight: size.height * 0.08,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        centerTitle: true,
        title: Text(
          TITULOS.COTACAO,
          style: TextStyle(color: AppCores.PRETO, fontWeight: FontWeight.w800),
        ),
        backgroundColor: AppCores.BRANCO,
        leading: BackButton(
          color: AppCores.PRETO,
        ),
      ),
      body: conteudo,
    );
  }
}
