//@dart=2.9
import 'package:flutter/material.dart';

import 'package:neo/Screen/texto_globais/textos_gerais/strings.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/botao_cotar.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/botao_entrar.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/container_nao_selecionado.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/container_selecionado.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/texto_inicio.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/componentes_textos_header/titulo.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

class FirstCarrosel extends StatefulWidget {
  const FirstCarrosel({Key key}) : super(key: key);

  @override
  _FirstCarroselState createState() => _FirstCarroselState();
}

class _FirstCarroselState extends State<FirstCarrosel> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: AppCores.BACKGROUND,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.height * 0.11),
              child: Image.asset(
                'assets/icon_header.png',
                fit: BoxFit.cover,
                scale: 2,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          RotasImagens(h: 0.4, image: AssetImage(RoutesImagens.FIRSTIMAGE)),
          Expanded(
              child: Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: AppCores.ROXOPRINCIPAL),
            child: Column(
              children: [
                Titulo(
                  h: 0.08,
                  r: 0,
                  titulo: TITULOS.FIRSTTITULO,
                  font: 26,
                  cor: AppCores.BRANCO,
                  bold: FontWeight.bold,
                ),
                TextoInicio(texto: STRING.TEXTOINICIO),
                BotaoCotar(texto: STRING.BOTAO),
                BotaoEntrar(texto: STRING.BOTAOENTRAR, cor: AppCores.BRANCO),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.02, left: size.height * 0.015),
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.4,
                    child: Row(
                      children: [
                        SizedBox(width: size.width * 0.02),
                        ContainerSelect(cor: AppCores.BRANCO),
                        SizedBox(width: size.width * 0.05),
                        ContainerNaoSelect(),
                        SizedBox(width: size.width * 0.05),
                        ContainerNaoSelect(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
