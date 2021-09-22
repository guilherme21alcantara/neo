import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';
import 'package:neo/Screen/componentes_globais/textos_gerais/textos.dart';

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
        toolbarHeight: size.height * 0.15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        centerTitle: true,
        title: Text(
          STRING.COTACAO,
          style: TextStyle(color: AppCores.PRETO),
        ),
        backgroundColor: AppCores.APPBAR,
        leading: BackButton(
          color: AppCores.PRETO,
        ),
      ),
    );
  }
}
