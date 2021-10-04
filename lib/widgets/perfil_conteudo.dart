import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:neo/Screen/carrosel/carrosel.dart';

import 'package:neo/Screen/perfil/add_endereco_page.dart';

import 'package:neo/Screen/perfil/detalhes_perfil.dart';
import 'package:neo/Screen/perfil/perfil_ajustes.dart';
import 'package:neo/Screen/perfil/termos_privacidade.dart';
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
        PerfilCard(size, Icons.person, 'Perfil', () {
          Get.offAll(DetalhesPerfil());
        }),
        PerfilCard(size, Icons.settings, 'Ajustes', () {
          Get.offAll(AjustesPerfilPage());
        }),
        PerfilCard(size, Icons.history, 'Histórico de Pagamentos', () {}),
        PerfilCard(size, Icons.health_and_safety_sharp, 'Apólice', () {}),
        PerfilCard(size, Icons.gps_fixed, 'Endereços', () {
          Get.offAll(AddEnderecoPage());
        }),
        PerfilCard(size, Icons.file_copy, 'Termos e Condições', () {
          Get.offAll(TermosPrivacidadePage(size: size));
        }),
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
                GestureDetector(
                  onTap: ()=> Get.offAll(Carousel()),
                  child:Text(
                  'Sair',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppCores.PRETO),
                ))
              ],
            ),
          ),
        )
      ],
    ),
  );
}
