import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/veiculo_card.dart';

class SelecionarVeiculoPage extends StatelessWidget {
  const SelecionarVeiculoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Selecionar Veículo',
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
            SizedBox(
              height: size.height * 0.01,
            ),
            VeiculoCard(size, true),
            VeiculoCard(size, false),
          ],
        ),
      ),
    );
  }
}
