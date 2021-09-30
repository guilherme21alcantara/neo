import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/popups/popup_colorido.dart';
import 'package:neo/Screen/componentes_globais/popups/popup_simples.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/cancelamento_campos.dart';

class CancelamentoPage extends StatelessWidget {
  const CancelamentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        conteudo: _corpo(size, context), title: 'Eventos e Sinistros');
  }

  Widget _corpo(Size size, BuildContext context) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            RotasImagens(h: 0.3, image: AssetImage(RoutesImagens.FIRSTIMAGE)),
            CancelamentoCampos(
              size,
              () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => PopUpSimples(
                        size,
                        'Você tem certeza disso?',
                        'Uma vez cancelado você poderá perder os benefícios de ser um cliente Premium com descontos e vantagens!',
                        'Voltar',
                        () {
                          Navigator.pop(context, 'OK');
                        },
                        txtBtnTitle: 'Confirmar o Cancelamento',
                        txtBtnFunc: () {
                          Navigator.pop(context, 'OK');
                        }));
              },
            )
          ],
        ),
      ),
    );
  }
}
