//@dart=2.9
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/botao_cotar.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/botao_entrar.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/container_nao_selecionado.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/container_selecionado.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/texto_inicio.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/componentes_globais/textos_header_componentes/titulo.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/strings.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

class SecondCarrosel extends StatefulWidget {
  const SecondCarrosel({Key key}) : super(key: key);

  @override
  _SecondCarroselState createState() => _SecondCarroselState();
}

class _SecondCarroselState extends State<SecondCarrosel> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      body: Column(
        children: [
          RotasImagens(h: 0.5,image: AssetImage(RoutesImagens.SECONDIMAGE)),
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
                Titulo(h:0.08,r:0,titulo: TITULOS.SECONDTITULO,font: 26, cor: AppCores.BRANCO),
                TextoInicio(texto: STRING.TEXTOSECOND),
                BotaoCotar(texto: STRING.BOTAO),
                BotaoEntrar(texto: STRING.BOTAOENTRAR),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.4,
                    child: Row(
                      children: [
                        SizedBox(width: size.width * 0.02),
                        ContainerNaoSelect(),
                        SizedBox(width: size.width * 0.05),
                        ContainerSelect(),
                        SizedBox(width: size.width * 0.05),
                        ContainerNaoSelect()
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
