import 'package:flutter/material.dart';

import 'componentes_globais/componentes_botao/botao_geral.dart';
import 'componentes_globais/componentes_temas/cores.dart';
import 'componentes_globais/componentes_temas/imagens.dart';
import 'componentes_globais/custom_list.dart';
import 'componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'componentes_globais/scaffold_principal.dart';

class VistoriaPage extends StatelessWidget {
  const VistoriaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(conteudo: _corpo(size), title: 'Autovistoria');
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            RotasImagens(h: 0.4, image: AssetImage(RoutesImagens.FIRSTIMAGE)),
            SizedBox(
              height: size.height * 0.02,
            ),
            Column(
              children: [
                Text(
                  'Autovistoria',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01, horizontal: size.width * 0.07),
              child: Container(
                height: size.height * 0.1,
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Text(
                    'Agora você deve realizar a Autovistoria do seu veículo seguindo o passo a passo. É rápido e fácil. Certiﬁque-se apenas que as fotos estão nítidas.',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            BotaoGeral(
              text: 'Iniciar',
              size: size * 1.12,
              h: 0.01,
              v: 0.05,
              cor: AppCores.ROXOPRINCIPAL,
              fonte: FontWeight.w800,
              tam: 18,
            ),
          ],
        ),
      ),
    );
  }
}
