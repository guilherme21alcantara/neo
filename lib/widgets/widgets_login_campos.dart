import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/checkbox.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto_icon.dart';
import 'package:neo/Screen/componentes_globais/inputs/text_button.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/cadastro.dart';

Widget camposLogin(Size size) {
  return Container(
      width: size.width * 0.95,
      color: AppCores.BRANCO,
      child: Column(
        children: [
          InputTextoIcon(
              icon: Icons.email_outlined,
              text: 'johndoe@email.com',
              size: size * 1.12,
              h: 0.007,
              v: 0.065),
          SizedBox(height: size.height * 0.01),
          InputTextoIcon(
              icon: Icons.lock_outline,
              text: '****************',
              size: size * 1.12,
              h: 0.007,
              v: 0.065),
          SizedBox(height: size.height * 0.005),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.055),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckBox(
                  size: size,
                  title: 'Relembrar',
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppCores.PRETO,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ),
          BotaoGeral(
            text: 'Entrar',
            size: size * 1.12,
            h: 0.01,
            v: 0.065,
            cor: AppCores.ROXOPRINCIPAL,
            fonte: FontWeight.w800,
            tam: 18,
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: AppCores.PRETO,
                  thickness: 1,
                  indent: size.width * 0.07,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'ou',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppCores.PRETO,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Divider(
                  color: AppCores.PRETO,
                  thickness: 1,
                  endIndent: size.width * 0.07,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01, horizontal: size.width * 0.08),
              child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: size.height * 0.06,
                      width: size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: HexColor('#395a9a'), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: HexColor('#395a9a'),
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Entrar com Facebook',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('#395a9a'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))))
        ],
      ));
}
