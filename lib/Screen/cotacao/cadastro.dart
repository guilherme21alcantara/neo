//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';

class CotarCadastro extends StatefulWidget {
  const CotarCadastro({ Key key }) : super(key: key);

  @override
  _CotarCadastroState createState() => _CotarCadastroState();
}

class _CotarCadastroState extends State<CotarCadastro> {
  @override
  Widget build(BuildContext context) {
      var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal();
  }
}