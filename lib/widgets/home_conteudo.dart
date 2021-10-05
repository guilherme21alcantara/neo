//@dart=2.9
import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/home_header_button.dart';
import 'package:neo/components/componentes_globais/indique_card.dart';
import 'package:neo/components/componentes_globais/neo_banner.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/widgets/home_campos.dart';

class HomeConteudo extends StatelessWidget {
  final Size size;
  const HomeConteudo({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomList(
      height: size.height,
      size: size,
      ativa: true,
      widget: Column(
        children: [
          HomeHeaderButton(
            size: size,
            title: 'Roubo e Furto',
            subtext: 'Mensal',
            btnTxt: 'Cotar',
            img: RoutesImagens.FIRSTIMAGE,
            function: () {},
          ),
          NeoBanner(
            size: size,
          ),
          HomeCampos(size: size),
          IndiqueCard(size: size)
        ],
      ),
    );
  }
}
