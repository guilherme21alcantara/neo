import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/troca_titularidade_conclusao_campos.dart';

class TrocaTitularidadeConclusaoPage extends StatelessWidget {
  const TrocaTitularidadeConclusaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Troca de Titularidade',
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
            RotasImagens(
                h: 0.4, w: 1, image: AssetImage('assets/carrosel02.png')),
            TrocaTitularidadeConclusaoCampos(size)
          ],
        ),
      ),
    );
  }
}
