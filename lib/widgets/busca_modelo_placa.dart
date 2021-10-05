//@dart=2.9
import 'package:flutter/material.dart';

import 'package:neo/Screen/cotacao/buscar_modelo_placa.dart';
import 'package:neo/Screen/cotacao/buscar_placa.dart';
import 'package:neo/Screen/cotacao/opcoes_uso_veiculo.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/cadastro.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:get/route_manager.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/container_nao_selecionado.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/container_selecionado.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_textos_header/titulo.dart';
import 'package:neo/components/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';
import 'package:neo/components/componentes_globais/inputs/text_button.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/components/componentes_globais/slider_bar.dart';

Widget modelo(Size size) {
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
          SizedBox(height: size.height * 0.01),
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
          SizedBox(height: size.height * 0.015),
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
                  SizedBox(height: size.height * 0.01),
                  InputTexto(
                      text: CADASTRO.PLACA,
                      size: size * 0.9,
                      h: 0.01,
                      v: 0.065),
                  SizedBox(height: size.height * 0.01),
                  CustomDropdown(
                      size: size, text: 'Modelo', optionsList: ['optionsList']),
                  SliderBar(
                    divisions: 50,
                    min: 22,
                    max: 50,
                    size: size, txt: '',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width*0.75),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppCores.ROXOPRINCIPAL),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: size.height * 0.05,
                      width: size.width * 0.1,
                      child: IconButton(
                          icon: Image.asset(RoutesImagens.BUTTON),
                          iconSize: 100,
                          onPressed: () {
                            Get.offAll(OpcoesUsoVeiculo());
                          }),
                    ),
                  ),
                ],
              )),
          SizedBox(height: size.height * 0.01),
          
          Padding
          (padding: EdgeInsets.only(
                      top: size.height * 0.03, left: size.height * 0.04),
            child: Container(
            height: size.height * 0.05,
            width: size.width * 0.6,
            child: Row(
              children: [
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.03),
                ContainerSelect(cor: AppCores.ROXOPRINCIPAL),
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
              ],
            ),
          ))
        ],
      ));
}
