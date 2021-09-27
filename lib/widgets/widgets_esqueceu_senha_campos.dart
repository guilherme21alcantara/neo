import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';

Widget camposEsqueceuSenha(Size size, BuildContext context) {
  return Container(
      width: size.width * 0.95,
      color: AppCores.BRANCO,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.13, vertical: size.height * 0.02),
            child: Text(
              'Vamos enviar ao seu email cadastrado o passo a passo para recuperação da sua Senha.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          InputTexto(text: 'Email', size: size * 1.12, h: 0.007, v: 0.065),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.13, vertical: size.height * 0.02),
            child: Text(
              'ex*****@gmail.com.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          BotaoGeral(
            text: 'Enviar',
            size: size * 1.12,
            h: 0.01,
            v: 0.065,
            cor: AppCores.ROXOPRINCIPAL,
            fonte: FontWeight.w800,
            tam: 18,
            function: _popUp(context),
          ),
          SizedBox(height: size.height * 0.01),
        ],
      ));
}

_popUp(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
