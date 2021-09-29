import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';

class AcompanhamentoEventosPage extends StatelessWidget {
  const AcompanhamentoEventosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(conteudo: _corpo(size), title: 'Cotação');
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
