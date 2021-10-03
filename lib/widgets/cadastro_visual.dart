//@dart=2.9
import 'package:flutter/material.dart';

import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/cadastro.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/componentes_textos_header/titulo.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_cotacao.dart';

Widget visual(Size size) {
  return Container(
      width: size.width * 1,
      color: AppCores.BRANCO,
      child: Column(
        children: [
          RotasImagens(
              h: 0.33,
              image: AssetImage(
                RoutesImagensCotacao.CADASTRO,
              )),
          Titulo(
            h: 0.025,
            r: 0.26,
            titulo: TITULOS.TITULO,
            font: 26,
            cor: AppCores.ROXOPRINCIPAL,
            bold: FontWeight.bold,
          ),
          Titulo(
            h: 0.015,
            r: 0.06,
            titulo: CADASTRO.SUBTITULO,
            font: 24,
            cor: AppCores.PRETO,
            bold: FontWeight.normal,
          ),
        ],
      ));
}
