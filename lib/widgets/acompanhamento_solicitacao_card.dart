import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';

Widget AcompanhamentoSolicitacaoCard(Size size) {
  return Padding(
    padding: EdgeInsets.only(
        top: size.height * 0.01,
        bottom: size.height * 0.01,
        left: size.width * 0.03,
        right: size.width * 0.03),
    child: Container(
      height: size.height * 0.21,
      width: size.width,
      decoration: BoxDecoration(
          border: Border.all(color: AppCores.ROXOPRINCIPAL, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: [
          Container(
            width: size.width * 0.8,
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
                    'Solicitação: Troca de Titularidade',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppCores.ROXOPRINCIPAL,
                    ),
                  ),
                  Text(
                    'Expira em: 2 dias',
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
                        width: size.width * 0.6,
                        decoration: BoxDecoration(
                            color: AppCores.ROXOPRINCIPAL,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.01),
                          child: Center(
                            child: Text(
                              'Aguardando novo titular',
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
            ],
          )
        ],
      ),
    ),
  );
}
