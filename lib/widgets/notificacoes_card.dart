import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

Widget NotificacoesCard(
    Size size, String name, String status, String hour, String date) {
  return TextButton(
    style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
    onPressed: () {},
    child: Container(
      height: size.height * 0.12,
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
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.height * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.15,
              width: size.width * 0.15,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(RoutesImagens.FIRSTIMAGE),
                    fit: BoxFit.contain),
              ),
            ),
            Container(
              width: size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                            child: RichText(
                                text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: '$name',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppCores.ROXOPRINCIPAL,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' $status',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppCores.CINZA,
                                fontWeight: FontWeight.bold),
                          ),
                        ]))),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: AppCores.CINZA,
                            size: 16,
                          ),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 14,
                              color: AppCores.CINZA,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            color: AppCores.CINZA,
                            size: 16,
                          ),
                          Text(
                            hour,
                            style: TextStyle(
                              fontSize: 14,
                              color: AppCores.CINZA,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.backspace_outlined,
                    color: AppCores.ROSA,
                    size: 16,
                  ),
                  splashRadius: 1,
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
