import 'package:flutter/material.dart';
import 'package:neo/widgets/indique_ganhe_campos.dart';

import 'componentes_globais/componentes_temas/imagens.dart';
import 'componentes_globais/custom_list.dart';
import 'componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'componentes_globais/scaffold_principal.dart';

class IndiqueGanhePage extends StatelessWidget {
  const IndiqueGanhePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Indique e Ganhe',
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            RotasImagens(h: 0.3, image: AssetImage(RoutesImagens.SECONDIMAGE)),
            SizedBox(
              height: size.height * 0.04,
            ),
            IndiqueGanheCampos(size)
          ],
        ),
      ),
    );
  }
}
