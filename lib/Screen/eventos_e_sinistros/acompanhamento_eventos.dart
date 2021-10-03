import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/evento_card.dart';

class AcompanhamentoEventosPage extends StatelessWidget {
  const AcompanhamentoEventosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Acompanhamento de Eventos',
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
            Padding(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(
                children: [EventoCard(size), EventoCard(size)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
