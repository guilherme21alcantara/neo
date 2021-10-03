import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

Widget AjudaChatCard(
    Size size, String name, String status, String hour, String notifications) {
  return Container(
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
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 18,
                    color: AppCores.PRETO,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                status,
                style: TextStyle(
                  fontSize: 14,
                  color: AppCores.CINZA,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                hour,
                style: TextStyle(
                  fontSize: 16,
                  color: AppCores.CINZA,
                ),
              ),
              (notifications != '0')
                  ? Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: AppCores.ROXOPRINCIPAL,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          notifications,
                          style: TextStyle(
                              fontSize: 12,
                              color: AppCores.BRANCO,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: AppCores.BRANCO,
                          borderRadius: BorderRadius.all(Radius.circular(50))))
            ],
          ),
        ],
      ),
    ),
  );
}
