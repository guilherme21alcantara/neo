//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/container_nao_selecionado.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/container_selecionado.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_textos_header/titulo.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/cadastro.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

Widget buscar(Size size) {
  return Container(
      color: AppCores.BACKGROUND,
      width: size.width * 1,
      padding: EdgeInsets.only(left: size.width * 0.02),
      child: Column(
        children: [
          Titulo(
            h: 0.015,
            r: 0,
            titulo: TITULOS.BUSCA,
            font: 24,
            cor: AppCores.ROXOPRINCIPAL,
            bold: FontWeight.bold,
          ),
          SizedBox(height: size.height * 0.05),
          Container(
              width: size.width * 0.95,
              color: AppCores.BRANCO,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.02),
                  InputTexto(
                      text: CADASTRO.PLACA,
                      size: size * 0.9,
                      h: 0.01,
                      v: 0.065),
                  SizedBox(height: size.height * 0.03),
                  CustomTextButton(
                      textoComum: 'Não sabe a placa ou veículo 0km?',
                      textoClicavel: 'Aqui !',
                      function: () {},
                      h: 0.14,
                      size: size),
                ],
              )),
          SizedBox(height: size.height * 0.51),
          Container(
            height: size.height * 0.05,
            width: size.width * 0.6,
            child: Row(
              children: [
                SizedBox(width: size.width * 0.02),
                ContainerSelect(cor: AppCores.ROXOPRINCIPAL),
                SizedBox(width: size.width * 0.05),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.05),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.05),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.05),
              ],
            ),
          )
        ],
      ));
}
