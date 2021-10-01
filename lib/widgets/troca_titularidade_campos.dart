import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/eventos_e_sinistros/regras_utilizacao.dart';
import 'package:neo/Screen/solicitacoes/troca_titularidade_conclusao.dart';

Widget TrocaTitularidadeCampos(Size size) {
  return Column(
    children: [
      SizedBox(
        height: size.height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Container(
          color: AppCores.BRANCO,
          height: size.height * 0.15,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Center(
              child: Text(
                'Por favor preencha os dados básicos da pessoa a quem deseja realizar a troca de titularidade do seu seguro.',
                style: TextStyle(
                  fontSize: 18,
                  color: AppCores.PRETO,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: size.height * 0.02,
      ),
      InputTexto(
        size: size,
        text: 'Nome do novo segurado',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      InputTexto(
        size: size,
        text: 'Telefone com DDD',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      InputTexto(
        size: size,
        text: 'Email',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      SizedBox(
        height: size.height * 0.05,
      ),
      BotaoGeral(
        text: 'Continuar',
        size: size * 1.12,
        h: 0.01,
        v: 0.065,
        cor: AppCores.ROXOPRINCIPAL,
        fonte: FontWeight.w800,
        tam: 18,
        fun: () {
          Get.offAll(TrocaTitularidadeConclusaoPage());
        },
      ),
    ],
  );
}
