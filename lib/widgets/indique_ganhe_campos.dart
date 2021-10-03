import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';

Widget IndiqueGanheCampos(Size size) {
  List<String> optionsList = ['opção 1', 'opção 2'];

  return Container(
    color: AppCores.BRANCO,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Container(
            height: size.height * 0.2,
            child: Center(
              child: Text(
                'Indique amigos e familiares e ganhe R\$50,00 a cada novo membro Neo indicado por você',
                style: TextStyle(
                    fontSize: 24,
                    color: AppCores.ROSA,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        InputTexto(
          size: size,
          text: 'Nome completo do Indicado',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        InputTexto(
          size: size,
          text: 'Celular com DDD do Indicado',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        InputTexto(
          size: size,
          text: 'Email do Indicado',
          h: 0.01,
          v: 0.085,
          height: size.height * 0.055,
        ),
        SizedBox(
          height: size.height * 0.04,
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
