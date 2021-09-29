import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/custom_box.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

Widget EventoCard(Size size) {
  return CustomBox(
    height: size.height * 0.2,
    width: size.width,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('FIAT',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppCores.ROXOPRINCIPAL,
                      fontWeight: FontWeight.bold)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.backspace_outlined),
                splashRadius: 1,
              )
            ],
          ),
          Text('HES-4843',
              style: TextStyle(
                fontSize: 20,
                color: AppCores.ROXOPRINCIPAL,
              )),
          SizedBox(
            height: size.height * 0.005,
          ),
          Text('Evento: Assistência a Vidros',
              style: TextStyle(
                fontSize: 20,
                color: AppCores.ROXOPRINCIPAL,
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
                onPressed: () {},
                child: Container(
                    height: size.height * 0.03,
                    decoration: BoxDecoration(
                        color: AppCores.ROXOPRINCIPAL,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.07),
                      child: Center(
                        child: Text(
                          'ABERTO',
                          style:
                              TextStyle(fontSize: 14, color: AppCores.BRANCO),
                        ),
                      ),
                    )),
              ),
              RotasImagens(
                  h: 0.07, w: 0.3, image: AssetImage(RoutesImagens.BUTTON))
            ],
          ),
        ],
      ),
    ),
  );
}
