import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/acidente_pessoal_passageiros.dart';

class AcidentePessoalPassageirosPage extends StatelessWidget {
  const AcidentePessoalPassageirosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        conteudo: _corpo(size), title: 'Eventos e Sinistros');
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            RotasImagens(h: 0.3, image: AssetImage(RoutesImagens.FIRSTIMAGE)),
            AcidentePessoalPassageirosCampo(size)
          ],
        ),
      ),
    );
  }
}
