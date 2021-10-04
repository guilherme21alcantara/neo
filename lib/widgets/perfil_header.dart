import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

Widget PerfilHeader(Size size, String name) {
  return Container(
    decoration: BoxDecoration(
        color: AppCores.BRANCO,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.15,
          width: size.width * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(RoutesImagens.FIRSTIMAGE),
                fit: BoxFit.contain),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
