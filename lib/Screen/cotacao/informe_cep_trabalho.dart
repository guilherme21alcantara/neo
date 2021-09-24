//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_textos_header/header.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/radio_button_fino.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/informe_cep.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

import 'formulario_cep.dart';

class InformeCEPTrabalho extends StatefulWidget {
  const InformeCEPTrabalho({Key key}) : super(key: key);

  @override
  _InformeCEPTrabalhoState createState() => _InformeCEPTrabalhoState();
}

class _InformeCEPTrabalhoState extends State<InformeCEPTrabalho> {
  bool veiculoFicaGaragem;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        title: TITULOS.COTACAO,
        conteudo: FormularioCEP(
            size: size, title: INFORMECEP.TRABALHO, temCampoInfo: true));
  }
}
