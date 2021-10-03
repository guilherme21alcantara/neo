import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';

Widget camposAlterarSenha(Size size) {
  return Container(
      width: size.width * 0.95,
      color: AppCores.BRANCO,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          InputTexto(
            text: 'Código',
            size: size * 1.12,
            h: 0.007,
            v: 0.065,
            icon: Icons.remove_red_eye_outlined,
          ),
          SizedBox(height: size.height * 0.01),
          InputTexto(
            text: 'Nova senha',
            size: size * 1.12,
            h: 0.007,
            v: 0.065,
            icon: Icons.remove_red_eye_outlined,
          ),
          SizedBox(height: size.height * 0.01),
          InputTexto(
            text: 'Confirmar senha',
            size: size * 1.12,
            h: 0.007,
            v: 0.065,
            icon: Icons.remove_red_eye_outlined,
          ),
          SizedBox(height: size.height * 0.01),
          BotaoGeral(
            text: 'Salvar',
            size: size * 1.12,
            h: 0.01,
            v: 0.065,
            cor: AppCores.ROXOPRINCIPAL,
            fonte: FontWeight.w800,
            tam: 18,
          ),
        ],
      ));
}
