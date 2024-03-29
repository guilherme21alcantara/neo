import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';

Widget camposEsqueceuSenha(Size size) {
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
          SizedBox(height: size.height * 0.01),
        ],
      ));
}
