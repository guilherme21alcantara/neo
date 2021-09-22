//@dart=2.9
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/botao_cotar.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/botao_entrar.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/container_nao_selecionado.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/container_selecionado.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/imagens_carrosel.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/texto_inicio.dart';
import 'package:neo/Screen/componentes_globais/componentes_carrosel/titulo.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/componentes_globais/textos_gerais/textos.dart';

class ThridCarrosel extends StatefulWidget {
  const ThridCarrosel({Key key}) : super(key: key);

  @override
  _ThridCarroselState createState() => _ThridCarroselState();
}

class _ThridCarroselState extends State<ThridCarrosel> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      body: Column(
        children: [
          RotasImagensCarrosel(image: AssetImage(RoutesImagens.THRIDIMAGE)),
          Expanded(
              child: Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: HexColor('#7f47fa')),
            child: Column(
              children: [
                Titulo(titulo: STRING.THRIDTITULO),
                TextoInicio(texto: STRING.TEXTOTHRID),
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
                        ContainerNaoSelect(),
                        SizedBox(width: size.width * 0.05),
                        ContainerSelect(),
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