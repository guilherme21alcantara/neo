import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

class AtiveLocalizacao extends StatelessWidget {
  const AtiveLocalizacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Detalhes do Perfil',
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    return Column(
      children: [
        RotasImagens(h: 0.3, image: AssetImage(RoutesImagens.FIRSTIMAGE)),
        SizedBox(
          height: size.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.01),
            height: size.height * 0.20,
            width: size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                children: [
                  Text(
                    'Termos de privacidade',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppCores.PRETO,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    'Para manter seu veículo segurado você deverá permanecer com sua localização ativa. Caso sua localização seja desligada suas coberturas serão automaticamente suspensas.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppCores.PRETO,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ),
        BotaoGeral(
          text: 'Ativar',
          size: size * 1.12,
          h: 0.01,
          v: 0.065,
          cor: AppCores.ROXOPRINCIPAL,
          fonte: FontWeight.w800,
          tam: 18,
        ),
      ],
    );
  }
}
