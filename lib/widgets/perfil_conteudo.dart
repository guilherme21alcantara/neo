import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/widgets/perfil_card.dart';

Widget PerfilConteudo(Size size) {
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
      children: [
        PerfilCard(size, Icons.person, 'Perfil', () {}),
        PerfilCard(size, Icons.settings, 'Ajustes', () {}),
        PerfilCard(size, Icons.history, 'Histórico de Pagamentos', () {}),
        PerfilCard(size, Icons.health_and_safety_sharp, 'Apólice', () {}),
        PerfilCard(size, Icons.gps_fixed, 'Endereços', () {}),
        PerfilCard(size, Icons.file_copy, 'Termos e Condições', () {}),
        PerfilCard(size, Icons.message, 'Ajuda', () {}),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: AppCores.PRETO,
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Text(
                  'Sair',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppCores.PRETO),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
