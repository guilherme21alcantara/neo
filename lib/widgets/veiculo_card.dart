import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/custom_box.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/solicitacoes/troca_titularidade.dart';
import 'package:neo/widgets/incidente_form.dart';

Widget VeiculoCard(Size size, bool ativo) {
  return Padding(
    padding: EdgeInsets.only(
        top: size.height * 0.01,
        bottom: size.height * 0.01,
        left: size.width * 0.05,
        right: size.width * 0.05),
    child: Container(
      height: size.height * 0.21,
      width: size.width,
      decoration: BoxDecoration(
          border: Border.all(color: AppCores.ROXOPRINCIPAL, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: [
          Container(
            width: size.width * 0.5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FIAT',
                    style: TextStyle(
                        fontSize: 24,
                        color: AppCores.ROXOPRINCIPAL,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'PALIO ATRACTIVE 2012/2013',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppCores.ROXOPRINCIPAL,
                    ),
                  ),
                  Text(
                    'HES-4843',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppCores.ROXOPRINCIPAL,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
                    onPressed: () {
                      (ativo) ? Get.offAll(TrocaTitularidadePage()) : () {};
                    },
                    child: Container(
                        height: size.height * 0.03,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            color: AppCores.ROXOPRINCIPAL,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.01),
                          child: Center(
                            child: Text(
                              (ativo) ? 'Ativo' : 'Inativo',
                              style: TextStyle(
                                  fontSize: 14, color: AppCores.BRANCO),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
          RotasImagens(
              h: 0.15, w: 0.35, image: AssetImage(RoutesImagens.FIRSTIMAGE))
        ],
      ),
    ),
  );
}
