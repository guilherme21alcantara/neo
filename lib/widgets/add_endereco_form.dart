import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:neo/Screen/eventos_e_sinistros/regras_utilizacao.dart';
import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';

Widget AddEnderecoForm(Size size, String name) {
  List<String> optionsList = ['opção 1', 'opção 2'];

  return Padding(
    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
    child: Column(
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        InputTexto(
          size: size,
          text: 'CEP',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        InputTexto(
          size: size,
          text: 'Endereço',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        InputTexto(
          size: size,
          text: 'Complemento',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        CustomDropdown(size: size, text: 'Estado', optionsList: optionsList),
        InputTexto(
          size: size,
          text: 'Cidade',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        InputTexto(
          size: size,
          text: 'CPF do Pernoite',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        InputTexto(
          size: size,
          text: 'CPF do Trabalho',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        InputTexto(
          size: size,
          text: 'CEP Adicional',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        BotaoGeral(
          text: 'Continuar',
          size: size * 1.12,
          h: 0.01,
          v: 0.065,
          cor: AppCores.ROXOPRINCIPAL,
          fonte: FontWeight.w800,
          tam: 18,
        ),
      ],
    ),
  );
}
