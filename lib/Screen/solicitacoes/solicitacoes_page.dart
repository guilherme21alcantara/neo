import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:neo/Screen/solicitacoes/acompanhamento_solicitacoes.dart';
import 'package:neo/Screen/solicitacoes/selecionar_veiculo.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/indique_card.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/solicitacoes_card.dart';

class SolicitacoesPage extends StatelessWidget {
  const SolicitacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Solicitações',
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
            SolicitacoesCard(
                size: size,
                title: 'Troca de Veículo',
                img: RoutesImagens.FIRSTIMAGE,
                function: () {}),
            SolicitacoesCard(
                size: size,
                title: 'Troca de Titularidade',
                img: RoutesImagens.FIRSTIMAGE,
                function: () {
                  Get.offAll(SelecionarVeiculoPage());
                }),
            SolicitacoesCard(
                size: size,
                title: 'Alteração de Coberturas',
                img: RoutesImagens.FIRSTIMAGE,
                function: () {}),
            IndiqueCard(size: size),
            _solicatacoesAberto(size)
          ],
        ),
      ),
    );
  }

  Widget _solicatacoesAberto(Size size) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.04),
      child: Container(
        height: size.height * 0.25,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(size.width * 0.02),
              child: Container(
                width: size.width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Text(
                        'Acompanhamento de Solicitações em aberto',
                        style: TextStyle(
                            color: AppCores.LARANJA,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all<Color?>(
                              AppCores.BRANCO)),
                      onPressed: () {
                        Get.offAll(() => AcompanhamentoSolicitacoes());
                      },
                      child: Container(
                          height: size.height * 0.03,
                          decoration: BoxDecoration(
                              color: AppCores.LARANJA,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07),
                            child: Center(
                              child: Text(
                                'Acompanhar',
                                style: TextStyle(
                                    fontSize: 14, color: AppCores.BRANCO),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            RotasImagens(
                h: 0.2, w: 0.35, image: AssetImage(RoutesImagens.SECONDIMAGE))
          ],
        ),
      ),
    );
  }
}
