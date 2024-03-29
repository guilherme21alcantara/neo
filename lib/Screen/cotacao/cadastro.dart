//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Routes/app_routes.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/lista_cotacao.dart';

class CotarCadastro extends StatefulWidget {
  const CotarCadastro({Key key}) : super(key: key);

  @override
  _CotarCadastroState createState() => _CotarCadastroState();
}

class _CotarCadastroState extends State<CotarCadastro> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      rota: Routes.INITIAL,
      title: TITULOS.COTACAO,
      conteudo: lista(size, true, true, true, false, false, ),
    );
  }
}
