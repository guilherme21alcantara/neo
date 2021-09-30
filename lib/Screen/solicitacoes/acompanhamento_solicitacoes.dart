import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/acompanhamento_solicitacao_card.dart';
import 'package:neo/widgets/solicitacoes_card.dart';

class AcompanhamentoSolicitacoes extends StatelessWidget {
  const AcompanhamentoSolicitacoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        conteudo: _corpo(size), title: 'Acompanhamento de Solicitações');
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [AcompanhamentoSolicitacaoCard(size)],
        ),
      ),
    );
  }
}
