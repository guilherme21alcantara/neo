import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/widgets/incidente_form.dart';

Widget CarroReservaCampos(Size size) {
  List<String> optionsList = ['opção 1', 'opção 2'];

  return IncidenteForm(size);
}
