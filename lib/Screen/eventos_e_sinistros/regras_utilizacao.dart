import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';

class RegrasUtilizacao extends StatelessWidget {
  const RegrasUtilizacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        conteudo: _corpo(size), title: 'Eventos e Sinistros', rota: '',);
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.03),
        child: Container(
          color: AppCores.BRANCO,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1,
                    vertical: size.height * 0.025),
                child: Text(
                  'TITULO',
                  style: TextStyle(
                      color: AppCores.ROXOPRINCIPAL,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.085),
                child: Container(
                  height: size.height * 0.6,
                  width: size.width,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.02),
                    child: Text(
                      'CONTEUDO',
                      maxLines: null,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
