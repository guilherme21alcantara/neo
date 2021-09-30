import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/popups/popup_colorido.dart';
import 'package:neo/Screen/componentes_globais/popups/popup_simples.dart';

import 'componentes_temas/cores.dart';
import 'componentes_temas/imagens.dart';

class IndiqueCard extends StatelessWidget {
  final Size size;
  const IndiqueCard({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: AppCores.BRANCO,
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
                    'Indique e Ganhe',
                    style: TextStyle(
                        color: AppCores.ROSA,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Text(
                    'Amigos e família',
                    style: TextStyle(
                        color: AppCores.PRETO,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => PopUpColorido(
                                  size,
                                  'Você tem certeza disso?',
                                  'Para realizar a alteração solicitada você deve Pagar estar em dia com todos os pagamentos. Para isso regularize os valores vencidos e retorne para a alteração.',
                                  'Pagar', () {
                                Navigator.pop(context, 'OK');
                              }));
                    },
                    child: Container(
                        height: size.height * 0.03,
                        decoration: BoxDecoration(
                            color: AppCores.ROSA,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.1),
                          child: Center(
                            child: Text(
                              'Indicar',
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
                h: 0.2, w: 0.45, image: AssetImage('assets/indique.jpeg'))
          ],
        ),
      ),
    );
  }
}
