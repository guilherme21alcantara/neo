import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

import 'componentes_temas/imagens.dart';

class HomeHeaderButton extends StatelessWidget {
  final Size size;
  const HomeHeaderButton({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.04),
      child: Container(
        height: size.height * 0.2,
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
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Seguro Auto',
                    style: TextStyle(
                        color: AppCores.ROXOPRINCIPAL,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Text(
                    'Mensal',
                    style: TextStyle(
                        color: AppCores.PRETO,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
                    onPressed: () {},
                    child: Container(
                        height: size.height * 0.03,
                        decoration: BoxDecoration(
                            color: AppCores.ROXOPRINCIPAL,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.1),
                          child: Center(
                            child: Text(
                              'Cotar',
                              style: TextStyle(
                                  fontSize: 14, color: AppCores.BRANCO),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
            RotasImagens(
                h: 0.2, w: 0.45, image: AssetImage(RoutesImagens.FIRSTIMAGE))
          ],
        ),
      ),
    );
  }
}
