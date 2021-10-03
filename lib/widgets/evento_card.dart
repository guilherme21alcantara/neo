import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/widgets/incidente_form.dart';

Widget EventoCard(Size size) {
  return Padding(
    padding: EdgeInsets.only(bottom: size.height * 0.02),
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
                    'HES-4843',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppCores.ROXOPRINCIPAL,
                    ),
                  ),
                  Text(
                    'Evento: Assistência a Vidros',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppCores.ROXOPRINCIPAL,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
                    onPressed: () {},
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
                              'Acompanhar',
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.backspace_outlined)),
              RotasImagens(
                  h: 0.12,
                  w: 0.35,
                  image: AssetImage(RoutesImagens.FIRSTIMAGE)),
            ],
          )
        ],
      ),
    ),
  );
}
