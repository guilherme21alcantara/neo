import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';
import 'package:neo/Screen/componentes_globais/textos_gerais/textos.dart';

class ScaffoldPrincipal extends StatelessWidget {
  final Widget conteudo;
  const ScaffoldPrincipal({Key? key, required this.conteudo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.BACKGROUND,
      appBar: AppBar(
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
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: AppCores.PRETO,
            ),
            onPressed: () {},
          )),
      body: conteudo,
    );
  }
}
