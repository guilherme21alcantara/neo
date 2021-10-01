import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/incidente_form.dart';

class RouboFurtoPage extends StatelessWidget {
  const RouboFurtoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        conteudo: _corpo(size), title: 'Eventos e Sinistros', rota: '',);
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            RotasImagens(
                h: 0.4, w: 1, image: AssetImage('assets/indique.jpeg')),
            SizedBox(
              height: size.height * 0.05,
            ),
            IncidenteForm(size)
          ],
        ),
      ),
    );
  }
}
