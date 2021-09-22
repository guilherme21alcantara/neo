import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';
import 'package:neo/Screen/componentes_globais/textos_gerais/textos.dart';

class ScaffoldPrincipal extends StatelessWidget {
  const ScaffoldPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCores.BACKGROUND,
      appBar: AppBar(
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
