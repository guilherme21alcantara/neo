import 'package:flutter/material.dart';
import 'package:neo/Screen/cotacao/formulario_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/informe_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

class InformeCEPPernoita extends StatefulWidget {
  const InformeCEPPernoita({Key? key}) : super(key: key);

  @override
  _InformeCEPPernoitaState createState() => _InformeCEPPernoitaState();
}

class _InformeCEPPernoitaState extends State<InformeCEPPernoita> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      title: TITULOS.COTACAO,
      conteudo: FormularioCEP(
        size: size,
        title: INFORMECEP.PERNOITA,
        temCampoInfo: true,
      ),
      rota: '',
    );
  }
}
