import 'package:flutter/widgets.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/botao_entrar.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';
import 'package:neo/Screen/cotacao/cadastro.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/cadastro.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/strings.dart';
import 'package:get/route_manager.dart';

Widget campos(Size size) {
  return Container(
      width: size.width * 0.95,
      color: AppCores.BRANCO,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          InputTexto(text: CADASTRO.NOME, size: size * 1.12, h: 0.01, v: 0.065),
          SizedBox(height: size.height * 0.01),
          InputTexto(text: CADASTRO.CEL, size: size * 1.12, h: 0.01, v: 0.065),
          SizedBox(height: size.height * 0.01),
          InputTexto(
              text: CADASTRO.Email, size: size * 1.12, h: 0.01, v: 0.065),
          SizedBox(height: size.height * 0.03),
          BotaoGeral(
            text: CADASTRO.PROXIMO,
            size: size * 1.12,
            h: 0.01,
            v: 0.065,
            cor: AppCores.ROXOPRINCIPAL,
            fonte: FontWeight.w800,
            tam: 18,
          ),
          SizedBox(height: size.height * 0.03),
          CustomTextButton(
              textoComum: 'Já possui uma conta?',
              textoClicavel: 'Entrar !',
              function: () {},
              h: 0.235,
              size: size),
        ],
      ));
}
