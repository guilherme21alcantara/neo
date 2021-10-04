//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/cotacao/buscar_modelo_placa.dart';
import 'package:neo/Screen/cotacao/cadastro.dart';
import 'package:neo/widgets/busca_modelo_placa.dart';

class ContainerNaoSelect extends StatelessWidget {
  final String rotas;
    ContainerNaoSelect(
      {Key key, this.rotas})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return GestureDetector(
        onTap: () {
          Get.offAll(rotas);
          print("object");
        },
        child: Container(
          height: size.height * 0.025,
          width: size.width * 0.05,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(30)),
        ));
  }
}
